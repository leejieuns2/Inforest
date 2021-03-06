package controller;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import controller.user.*;
import controller.product.*;

public class RequestMapping {
    private static final Logger logger = LoggerFactory.getLogger(DispatcherServlet.class);
    
    // 각 요청 uri에 대한 controller 객체를 저장할 HashMap 생성
    private Map<String, Controller> mappings = new HashMap<String, Controller>();

    public void initMapping() {
       // 각 uri에 대응되는 controller 객체를 생성 및 저장
        mappings.put("/", new ForwardController("/index.jsp"));
        mappings.put("/main", new ForwardController("/home.jsp"));   //home.jsp 이동
        
        /* User 관련 Mapping */
        mappings.put("/signIn", new ForwardController("/sign-in.jsp"));   // 로그인
        mappings.put("/signUp", new ForwardController("/sign-up.jsp")); // 회원가입 창
        mappings.put("/signUpdate", new ForwardController("/sign-update.jsp")); // 유저 정보 수정
        mappings.put("/register", new RegisterUserController()); // 회원가입 완료 (DB저장)
        mappings.put("/login", new LoginController());
        mappings.put("/logout", new LogoutController());
        mappings.put("/user_update_form", new UpdateUserFormController()); //
        mappings.put("/user_update", new UpdateUserController());
        mappings.put("/user_delete", new DeleteUserController());
       
        mappings.put("/user_list", new ListUserController());
        mappings.put("/user_view", new ViewUserController());
        
        /* Product 관련  Mapping*/
        mappings.put("/productList", new ListProductController());
        mappings.put("/productDetail", new DetailProductController());
        mappings.put("/phone", new ForwardController("/phone.jsp"));
        mappings.put("/productSearch", new ViewProductController());
        mappings.put("/productLike", new LikeProductController());
        
        /* Ranking 관련 Mapping */
        mappings.put("/rankCont", new RankingProductController());
     
        /* Admin Management 관련 Mapping */
        
        /* 핸드폰 Insert & Update 페이지 forwarding 관련 Mapping */
        mappings.put("/phone_insert", new ForwardController("/phone/phone-insert.jsp")); 
        mappings.put("/phone_update", new ForwardController("/phone/phone-update.jsp")); 

        /* 노트북 Insert & Update 페이지 forwarding 관련 Mapping */
        mappings.put("/laptop_insert", new ForwardController("/laptop/laptop-insert.jsp")); 
        mappings.put("/laptop_update", new ForwardController("/laptop/laptop-update.jsp"));
        
        /* 카메라 Insert & Update 페이지 forwarding 관련 Mapping */
        mappings.put("/camera_insert", new ForwardController("/camera/camera-insert.jsp"));
        mappings.put("/camera_update", new ForwardController("/camera/camera-update.jsp")); 

        /* 태블릿 Insert & Update 페이지 forwarding 관련 Mapping */
        mappings.put("/tablet_insert", new ForwardController("/tablet/tablet-insert.jsp"));
        mappings.put("/tablet_update", new ForwardController("/tablet/tablet-update.jsp"));

        /* 제품 등록  & 수정  & 삭제 관련 Mapping */
        mappings.put("/insertProduct", new CreateProductController()); // 제품 등록
        mappings.put("/updateProduct", new UpdateProductController()); // 제품 수정 
        mappings.put("/deleteProduct", new DeleteProductController()); // 제품 삭제
        
        /* Home Header 관련  Mapping*/
        mappings.put("/rank", new ForwardController("/rank.jsp"));   //rank.jsp이동
        mappings.put("/product", new ForwardController("/product.jsp"));   //product.jsp이동
        mappings.put("/post", new ForwardController("/post.jsp"));   //post.jsp이동
        mappings.put("/mypage", new ForwardController("/mypage.jsp"));   //mypage.jsp이동
        mappings.put("/management", new ForwardController("/manage.jsp"));   //management.jsp로 이동

        /* 댓글 관련 Mapping */
        mappings.put("/deleteComment", new DeletePCommentController()); //댓글 삭제
        
        logger.info("Initialized Request Mapping!");
    }

    public Controller findController(String uri) {   
       // 주어진 uri에 대응되는 controller 객체를 찾아 반환
        return mappings.get(uri);
    }
}

