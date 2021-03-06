<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>INFOREST</title>
    <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" type="text/css" href="css/util.css">
   <link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<style type="text/css">
   #aside {position:absolute; top:400px; right:0; z-index:3; width:300px;}
</style>
<script>
   function detailAction(targetUri) {
       form.action = targetUri;
       alert(targetUri);
       form.submit();
    }
   
   function myCheck(){ //빈칸이면 false되도록 
       if(form1.review.value == ""){
            alert("댓글을 입력하십시오.");
            form1.review.focus();
            return false;
         } 
         
      var member_id = "<%=(String)session.getAttribute("userId")%>";
      alert(member_id);
      
       if(member_id == "null"){ //로그아웃 상태 
          alert("로그인을 한 후에 댓글을 작성할 수 있습니다.");
          history.go(0);
      }
       else{ //로그인 
          alert("로그인상태입니다.");
          form1.submit();
       }
   }
</script>
</head>
<body class="animsition">
   <!-- Header import -->
   <jsp:include page="/WEB-INF/views/header.jsp"/>
   
   <!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/product_bg.jpg');">
      <h2 class="ltext-105 cl0 txt-center">
         Product Details
      </h2>
   </section>   
   
   <% System.out.println("tablet-detail.jsp"); %>
   
   <!-- Product Detail -->
   <section class="sec-product-detail bg0 p-t-65 p-b-60">
         <div>
            <!-- Tab01 -->
            <div class="tab01">
               <!-- Nav tabs -->
               <ul class="nav nav-tabs" role="tablist">
                  <!-- 세부적인 product 정보 (phone, laptop, camera, tablet 다 다름 -->
                  <li class="nav-item p-b-10" style="font-size:20px">
                     Additional information
                  </li>
               </ul>

               <!-- Tab panes -->
               <div class="tab-content p-t-43">
                  
                  <!-- Additional information 내용 -->
                  <div class="tab-pane fade show active" id="information" role="tabpanel">
                     <div class="row">
                        <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                           <ul class="p-lr-28 p-lr-15-sm">
                           
                  <div>
                  <h3 class="mtext-105 cl2 js-name-detail p-b-14"><c:out value="${tabletDetail.brand}"/></h3>
                  <h4 class="mtext-105 cl2 js-name-detail p-b-14"><c:out value="${tabletDetail.name}"/></h4>
                  <span class="mtext-106 cl2">
                     <c:out value="${tabletDetail.price}"/>
                  </span>


                  <div style="height:50px;">&nbsp;</div>
                     <p class="stext-100 cl3 p-t-23">
                         KIND : Tablet
                     </p>
                     <p class="stext-100 cl3 p-t-23">
                         COLOR : <c:out value="${tabletDetail.color}"/>
                     </p>
                     <p class="stext-100 cl3 p-t-23">
                         WEIGHT : <c:out value="${tabletDetail.weight}"/>g
                     </p>
                     <p class="stext-100 cl3 p-t-23">
                         RELEASED DATE : <c:out value="${tabletDetail.released_date}"/>
                     </p>
                  </div>
                  
                  
                  <div style="height:50px;">&nbsp;</div>
                     <li class="flex-w flex-t p-b-7">
                        <span class="stext-102 cl3 size-205">
                                    Battery
                        </span>

                        <span class="stext-102 cl6 size-206">
                                 <c:out value="${tabletDetail.tBattery}"/> 
                        </span>
                     </li>

                     <li class="flex-w flex-t p-b-7">
                        <span class="stext-102 cl3 size-205">
                                    Memory
                        </span>

                        <span class="stext-102 cl6 size-206">
                                 <c:out value="${tabletDetail.tMemory}"/> 
                        </span>
                     </li>

                     <li class="flex-w flex-t p-b-7">
                        <span class="stext-102 cl3 size-205">
                                    OS
                        </span>

                        <span class="stext-102 cl6 size-206">
                                 <c:out value="${tabletDetail.tOS}"/> 
                        </span>
                     </li>

                     <li class="flex-w flex-t p-b-7">
                        <span class="stext-102 cl3 size-205">
                                    Size
                        </span>

                        <span class="stext-102 cl6 size-206">
                                 <c:out value="${tabletDetail.tSize}"/> 
                        </span>
                     </li>
                           
                     
                     <div style="height:50px;">&nbsp;</div><div style="height:50px;">&nbsp;</div>
                            
                     <form name="form" method="POST" action="<c:url value='/product' />">
                        <input type="hidden" name="pId" value="${tabletDetail.productId}" />
                        <input type="hidden" name="kind" value="3" />
                       
                        <c:if test="${position == 0}">
                           <div class="size-204 flex-w flex-m respon6-next">
                              <button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer"
                                 onClick="detailAction('<c:url value='/tablet_update'/>')">UPDATE
                              </button>
                              <button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer"
                                 onClick="detailAction('<c:url value='/deleteProduct'/>')">DELETE
                              </button>
                           </div>
                        </c:if>
                     </form>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
   </section>
   
   
   
   
   
   
   
 <div id="aside" class="m-r-28" style="border-radius: 20px 20px 20px 20px;  border:1.5px solid rgb(222,225,230);">
   <center><h3 class="p-t-7 p-b-5">How about these?</h3><img src="<c:url value='/images/icons/recommend.png' />" ></center>
   
   
   <center>
               <div class="p-t-5 p-b-30 m-l-25 m-r-55" style="word-break:break-all;">
                   <table width="250">
                     <tr class="table_head" height="40">
                        <th class="column-0" style="color:black" width="60px">Id</th>   
                        <th class="column-1" style="padding-left:20px; color:black"><p style="padding-left:10px">Name</p></th>
                      </tr>


                <c:forEach var="list" items="${tRecomm}" varStatus="status">                  
                     <tr class="table_row" height="30" >
                         <td class="column-0" style="color:black">
                         <a href="<c:url value='/productDetail'><c:param name="kind2" value="${list.getpKind()}"/>
                                                              <c:param name="pId" value="${list.getProductId()}"/>
                                       </c:url>" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                                      <font style="font-size:15px">
                                         <c:out value="${list.getProductId()}"/>
                                      </font>
                                 </a>
                         </td>
                         <td class="column-1" style="padding-left:20px; color:black; font-size:15px;">${list.getName()}</td>
                     </tr>
                     </c:forEach>     
                     
                  </table>
               </div>
    </center>
   </div>     
   
   
   

      <!-- 리뷰 창 -->
   <div class="bor10 m-t-50 p-t-43 p-b-40">
      <div class="tab01">
         <!-- Reviews 내용 -->
         <div class="tab-pane fade" id="reviews">
            <div class=""src/controller/product/DeleteProductController.java"row">
               <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                  <div class="p-b-30 m-lr-15-sm">
                     <!-- db에 있는 comment내용과 userid를 getCommentList로 보여주기  -->
                     <span class="container">
                     <span class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
                  <h5 class="mtext-108 cl2 p-b-30">Comment List</h5>
                           <div class="flex-w flex-t bor12 p-b-13">
           <form  name="form1" method="POST" action="">
                        <table>
                           <thead>
                              <tr>
                               <th><div class="flex-w flex-t p-t-27 p-b-33"><div class="size-400">User</div></div></th>   
                               <th><div class="flex-w flex-t p-t-27 p-b-33"><div class="size-400">Review</div></div></th>
                               <th><div class="flex-w flex-t p-t-27 p-b-33"><div class="size-400">Regist_Date</div></div></th>
                               <th><div class="flex-w flex-t p-t-27 p-b-33"><div class="size-400"></div></div></th>
                              </tr>
                           </thead>
                        <tbody>
                              <c:forEach var="comment" items="${plist}" varStatus = "status">
                           <c:if test="${comment.productId == tabletDetail.productId}">
                           <tr>
                              <div class="flex-w flex-t bor12 p-b-13">
                                 <td><div class="size-208">
                                    <div class="size-400">
                                       <c:out value="${comment.userId}" />
                                    </div>
                                 </div></td>
                                 <td><div class="flex-w flex-t p-t-27 p-b-33">
                                    <div class="size-400">
                                       <c:out value="${comment.review}" />
                                    </div>
                                 </div></td>
                                 <td><div class="flex-w flex-t p-t-27 p-b-33">
                                    <div class="size-400">
                                       <c:out value="${comment.registDate}" />
                                    </div>
                                 </div></td>
                                  <td><div class="flex-w flex-t p-t-27 p-b-33"><div class="size-400">
                                                
                                                <button class="flex-c-m stext-101 cl0 size-50 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" 
                                                type="button" onClick="deleteAction('<c:url value='/deleteComment'><c:param name="reviewId" value="${comment.commentId}"/>
                                                <c:param name="kind2" value="0"/><c:param name="pId2" value="${tabletDetail.productId}"/>
                                                </c:url>')">
                                                      Delete
                                                </button>
                                              </div></div>
                                             </td>

                              </div>
                           </tr></c:if>
                        </c:forEach>
                                  <tr>
                                       <td colspan="4" value = "댓글 추가">
                                                   <h5 class="mtext-108 cl2 p-b-7">Add a review</h5>
                                                   <p class="stext-102 cl6">You can write comments by logging in.</p>
                                                   
                                                   <div class="row p-b-25">
                                                   <div class="col-12 p-b-5">
                                                      <textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="review" name="review"></textarea>
                                                   </div>
                                                   </div>
                                                
                                                   <button class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10" 
                                                   type="button" onClick="myCheck('<c:url value='/productDetail'>
                                                <c:param name="pId" value="${tabletDetail.productId}"/>
                                                <c:param name="kind" value="0"/>
                                                </c:url>')">
                                                      Submit
                                                   </button>
                                    
                                       </td></tr>
                    
                  </tbody>
                  </table></form></div>
   
                        <br>
                        <br>
                     </span>
                     </span>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>