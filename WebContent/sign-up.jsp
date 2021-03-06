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

<script>
	function userCreate() {
	   if (form.userId.value == "") {
	      alert("사용자 ID를 입력하십시오.");
	      form.userId.focus();
	      return false;
	   } 
	   if (form.password.value == "") {
	      alert("비밀번호를 입력하십시오.");
	      form.password.focus();
	      return false;
	   }
	   if (form.name.value == "") {
	      alert("이름을 입력하십시오.");
	      form.name.focus();
	      return false;
	   }
	   form.submit();
	}
	
	function userList(targetUri) {
	      form.action = targetUri;
	      form.submit();
	}  
</script>
</head>
<body>

   <!-- Header import -->
   <jsp:include page="/WEB-INF/views/header.jsp"/>
   
   <!-- Title page -->
   <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/sign_bg.png');">
	   	<h2 class="ltext-105 cl0 txt-center">
	         Sign Up
	    </h2>
   </section>   

<div style="height:50px;">&nbsp;</div>


<!-- 회원가입 테이블 -->
<div class="container">
<div class="row">
<form class="bg0 p-t-75 p-b-85" name="form" method="POST" action="<c:url value='/register' />" style="position:absolute;left:50%;margin:0 0 0 -310px;">
   <table style="width:750px; margin-left: auto; margin-right: auto;" class="table-sign">
   <tr class="table_row">
      <td class="column-1" >
         ID
      </td>
      <td class="column-2">
         <input class="stext-104 cl2 plh4 size-sign bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="userId" placeholder="ID를 입력하세요">
      </td>
   </tr>

   <tr class="table_row">
      <td class="column-1">
         PASSWORD
      </td>
      <td class="column-2">
         <input class="stext-104 cl2 plh4 size-sign bor13 p-lr-20 m-r-10 m-tb-5" type="password" name="password" placeholder="비밀번호를 입력하세요(8자이상)">
      </td>
   </tr>
   
   <tr class="table_row">
      <td class="column-1">
         NAME
      </td>
      <td class="column-2">
         <input class="stext-104 cl2 plh4 size-sign bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="name" placeholder="이름을 입력하세요">
      </td>
   </tr>
   
   <tr class="table_row">
      <td class="column-1">
         AGE
      </td>
      <td class="column-2">
         <input class="stext-104 cl2 plh4 size-sign bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="age" placeholder="나이를 입력하세요">
      </td>
   </tr>
   
   <tr class="table_row">
      <td class="column-1">
         GENDER
      </td>
      <td class="column-2" >
      <div class="flex-l-m flex-w w-full p-t-10 m-lr--7">      
         &nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="0"> &nbsp; WOMAN &nbsp;&nbsp;&nbsp;
         <input type="radio" name="gender" value="1"> &nbsp; MAN
         <!-- <input class="stext-104 cl2 plh4 size-sign bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder=""> -->
      </div>
      </td>
   </tr>
   
   <tr class="table_row">
      <td class="column-1">
         POSITION
      </td>
      <td class="column-2">
      <div class="flex-l-m flex-w w-full p-t-10 m-lr--7">   
          &nbsp;&nbsp;&nbsp;<input type="radio" name="position" value="0">&nbsp; ADMIN &nbsp;&nbsp;&nbsp;
         <input type="radio" name="position" value="2">&nbsp; USER
         <!-- <input class="stext-104 cl2 plh4 size-sign bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder=""> -->
      </div>   
      </td>
   </tr>
   
   <tr class="table_row">
      <td class="column-1">
         INTRODUCE
      </td>
      <td class="column-2">
         <textarea class="stext-104 cl2 plh4 size-introduce bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="introduce" placeholder="" rows="5">
         </textarea>
      </td>
   </tr>
                        
   <tr class="table_row">
      <td class="column-1">
         <div class="flex-c-m stext-101 cl2 size-submit bg8 bor13 hov-btn3  trans-04 pointer m-tb-5">
        <button type="button" onClick="userList('<c:url value='/signIn'/>')">Back To Login</button>
               </div>
      </td>
      <td class="column-2">
         <div class="flex-c-m stext-101 cl2 size-submit bg8 bor13 hov-btn3  trans-04 pointer m-tb-10">
            <button type="button" value="회원 가입" onClick="userCreate()">Sign Up</button>
         </div>
      </td>
   </tr>
   </table>
   </form>
   </div>
   </div>
</body>
</html>