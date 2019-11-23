<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <title>Mypage</title>
     <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" type="text/css" href="css/util.css">
   <link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

</head>
<body class="animsition">
      <!-- Header -->
   <header class="header-v3">
      <!-- Header desktop -->
      <div class="container-menu-desktop">
         <div class ="wrap-menu-desktop how-shadow1">
            <nav class="limiter-menu-desktop container">
               
               <!-- Logo desktop -->      
               <a href="home.jsp" class="logo">
                     <img src="images/icons/inforest_logo.png" alt="IMG-LOGO">
                     </a>

               <!-- Menu desktop -->
               <div class="menu-desktop">
                  <ul class="main-menu">
                      <li>
                         <a href="<c:url value='/main'/>" style="color:white">HOME</a>
                     </li>

                     <li>
                      <a href="<c:url value='/rank'/>" style="color:white">RANK</a>
                        </li>

                     <li>
                      <a href="<c:url value='/product'/>" style="color:white">PRODUCT</a>
                          </li>

                     <li>
                      <a href="<c:url value='/post'/>" style="color:white">POST</a>
                       </li>

                     <li>
                       <a href="<c:url value='/mypage'/>" style="color:white">MY PAGE</a>
                         </li>
                     
                     <li>
                        <a href="<c:url value='/signIn'/>" style="color:white">SIGN IN</a>
                         </li>
                  </ul>
               </div>
               
            <!-- Icon header -->
               <div class="wrap-icon-header flex-w flex-r-m">
                  <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="3">
                     <i class="zmdi zmdi-favorite-outline"></i>
                  </div>

               </div>

            </nav>
         </div>   
      </div>

      <!-- Modal Search -->
      <div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
         <div class="container-search-header">
            <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
               <img src="images/icons/icon-close2.png" alt="CLOSE">
            </button>

            <form class="wrap-search-header flex-w p-l-15">
               <button class="flex-c-m trans-04">
                  <i class="zmdi zmdi-search"></i>
               </button>
               <input class="plh3" type="text" name="search" placeholder="Search...">
            </form>
         </div>
      </div>
   </header>

   <!-- Cart -->
    <div class="wrap-header-cart js-panel-cart">
      <div class="s-full js-hide-cart"></div>

      <div class="header-cart flex-col-l p-l-65 p-r-25">
         <div class="header-cart-title flex-w flex-sb-m p-b-8">
            <span class="mtext-103 cl2">
               ♡ LIKE ♡
            </span>

            <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
               <i class="zmdi zmdi-close"></i>
            </div>
         </div>
         
         <div class="header-cart-content flex-w js-pscroll">
            <ul class="header-cart-wrapitem w-full">
               <li class="header-cart-item flex-w flex-t m-b-12">
                  <div class="header-cart-item-img">
                     <img src="images/item-cart-01.jpg" alt="IMG">
                  </div>

                  <div class="header-cart-item-txt p-t-8">
                     <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                        White Shirt Pleat
                     </a>

                     <span class="header-cart-item-info">
                        1 x $19.00
                     </span>
                  </div>
               </li>

               <li class="header-cart-item flex-w flex-t m-b-12">
                  <div class="header-cart-item-img">
                     <img src="images/item-cart-02.jpg" alt="IMG">
                  </div>

                  <div class="header-cart-item-txt p-t-8">
                     <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                        Converse All Star
                     </a>

                     <span class="header-cart-item-info">
                        1 x $39.00
                     </span>
                  </div>
               </li>

               <li class="header-cart-item flex-w flex-t m-b-12">
                  <div class="header-cart-item-img">
                     <img src="images/item-cart-03.jpg" alt="IMG">
                  </div>

                  <div class="header-cart-item-txt p-t-8">
                     <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04">
                        Nixon Porter Leather
                     </a>

                     <span class="header-cart-item-info">
                        1 x $17.00
                     </span>
                  </div>
               </li>
            </ul>
         </div>
      </div>
   </div>

   <!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/mypage_bg.png');">
      <h2 class="ltext-105 cl0 txt-center">
         Mypage
      </h2>
   </section>   

   <!-- Shoping Cart -->
   <form class="bg0 p-t-75 p-b-85">
      <div class="container">
         <div class="row">
            <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
               <div class="m-l-25 m-r--38 m-lr-0-xl">
                  <div class="wrap-table-shopping-cart">
                     <table class="table-shopping-cart">
                        <tr class="table_head">
                           <th class="column-1">Product</th>
                           <th class="column-2"></th>
                           <th class="column-3">Price</th>
                           <th class="column-4">Quantity</th>
                           <th class="column-5">Total</th>
                        </tr>

                        <tr class="table_row">
                           <td class="column-1">
                              <div class="how-itemcart1">
                                 <img src="images/item-cart-04.jpg" alt="IMG">
                              </div>
                           </td>
                           <td class="column-2">Fresh Strawberries</td>
                           <td class="column-3">$ 36.00</td>
                           <td class="column-4">
                              <div class="wrap-num-product flex-w m-l-auto m-r-0">
                                 <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                    <i class="fs-16 zmdi zmdi-minus"></i>
                                 </div>

                                 <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

                                 <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                    <i class="fs-16 zmdi zmdi-plus"></i>
                                 </div>
                              </div>
                           </td>
                           <td class="column-5">$ 36.00</td>
                        </tr>

                        <tr class="table_row">
                           <td class="column-1">
                              <div class="how-itemcart1">
                                 <img src="images/item-cart-05.jpg" alt="IMG">
                              </div>
                           </td>
                           <td class="column-2">Lightweight Jacket</td>
                           <td class="column-3">$ 16.00</td>
                           <td class="column-4">
                              <div class="wrap-num-product flex-w m-l-auto m-r-0">
                                 <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                                    <i class="fs-16 zmdi zmdi-minus"></i>
                                 </div>

                                 <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product2" value="1">

                                 <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                                    <i class="fs-16 zmdi zmdi-plus"></i>
                                 </div>
                              </div>
                           </td>
                           <td class="column-5">$ 16.00</td>
                        </tr>
                     </table>
                  </div>

                  <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
                     <div class="flex-w flex-m m-r-20 m-tb-5">
                        <input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code">
                           
                        <div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
                           Apply coupon
                        </div>
                     </div>

                     <div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
                        Update Cart
                     </div>
                  </div>
               </div>
            </div>

            <div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
               <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
                  <h4 class="mtext-109 cl2 p-b-30">
                     Cart Totals
                  </h4>

                  <div class="flex-w flex-t bor12 p-b-13">
                     <div class="size-208">
                        <span class="stext-110 cl2">
                           Subtotal:
                        </span>
                     </div>

                     <div class="size-209">
                        <span class="mtext-110 cl2">
                           $79.65
                        </span>
                     </div>
                  </div>

                  <div class="flex-w flex-t bor12 p-t-15 p-b-30">
                     <div class="size-208 w-full-ssm">
                        <span class="stext-110 cl2">
                           Shipping:
                        </span>
                     </div>

                     <div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
                        <p class="stext-111 cl6 p-t-2">
                           There are no shipping methods available. Please double check your address, or contact us if you need any help.
                        </p>
                        
                        <div class="p-t-15">
                           <span class="stext-112 cl8">
                              Calculate Shipping
                           </span>

                           <div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
                              <select class="js-select2" name="time">
                                 <option>Select a country...</option>
                                 <option>USA</option>
                                 <option>UK</option>
                              </select>
                              <div class="dropDownSelect2"></div>
                           </div>

                           <div class="bor8 bg0 m-b-12">
                              <input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="State /  country">
                           </div>

                           <div class="bor8 bg0 m-b-22">
                              <input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="postcode" placeholder="Postcode / Zip">
                           </div>
                           
                           <div class="flex-w">
                              <div class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer">
                                 Update Totals
                              </div>
                           </div>
                              
                        </div>
                     </div>
                  </div>

                  <div class="flex-w flex-t p-t-27 p-b-33">
                     <div class="size-208">
                        <span class="mtext-101 cl2">
                           Total:
                        </span>
                     </div>

                     <div class="size-209 p-t-1">
                        <span class="mtext-110 cl2">
                           $79.65
                        </span>
                     </div>
                  </div>

                  <button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
                     Proceed to Checkout
                  </button>
               </div>
            </div>
         </div>
      </div>
   </form>
      
   <!-- Back to top -->
   <div class="btn-back-to-top" id="myBtn">
      <span class="symbol-btn-back-to-top">
         <i class="zmdi zmdi-chevron-up"></i>
      </span>
   </div>

<!--===============================================================================================-->   
   <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/bootstrap/js/popper.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/select2/select2.min.js"></script>
   <script>
      $(".js-select2").each(function(){
         $(this).select2({
            minimumResultsForSearch: 20,
            dropdownParent: $(this).next('.dropDownSelect2')
         });
      })
   </script>
<!--===============================================================================================-->
   <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
   <script>
      $('.js-pscroll').each(function(){
         $(this).css('position','relative');
         $(this).css('overflow','hidden');
         var ps = new PerfectScrollbar(this, {
            wheelSpeed: 1,
            scrollingThreshold: 1000,
            wheelPropagation: false,
         });

         $(window).on('resize', function(){
            ps.update();
         })
      });
   </script>
<!--===============================================================================================-->
   <script src="js/main.js"></script>

</body>
</html>