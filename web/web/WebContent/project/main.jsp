<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<script>
</script>
<meta charset="EUC-KR">
<title>Lost It</title>
<link href="mystyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
   String userid = null;
   if(session.getAttribute("userid")!=null){
      userid=(String) session.getAttribute("userid");
}

%>
<%
   if(userid == null){
%>
   <div id=header>
   	  <a href="main.jsp" target="_self"><img src="ditective1.png" width=75px; height=75px; align="center";></a>
      <a href="main.jsp" target="_self"><img src="LOGO.PNG" width=230px; height=70px; align="center ";></a>
      <a href="register.html" target="_self"><img src="joinup.PNG" align="right" width="80"; height="40"; vertical-align=bottom;></a>
      <a href="login.html" target="_self"><img src="login.PNG" align="right" width="80"; height="40"; vertical-align=bottom;></a>
   </div>
         <div id=menu>
      <ul>         
         <script>
         function logins() {
            alert("로그인을 해주세요.");
         }
         </script>

         <li><a href="login.html" target="_self" onclick="logins()">Lost</a></li>
         <li><a href="login.html" target="_self" onclick="logins()">Pick</a></li>
         <li><a href="login.html" target="_self" onclick="logins()">마이페이지</a></li>
         <li><a href="login.html" target="_self" onclick="logins()">고객센터</a></li>
         <li><a href="login.html" target="_self" onclick="logins()">만남의광장</a></li>
         
      </ul>
   </div>
   <%} else {%>
       <div id=header>
      <a href="main.jsp" target="_self"><img src="ditective1.png" width=75px; height=75px; align="center";></a>
      <a href="main.jsp" target="_self"><img src="LOGO.PNG" width=230px; height=70px; align="center ";></a>
      <a href="logoutAction.jsp" target="_self" id="loginbutton"><img src="logout.PNG"  align="right"  width="80"; height="40"; style="padding:150;"></a>
   </div>
         <div id=menu>
      <ul>

         <li><a href="Lost.html" target="_self">Lost</a></li>
         <li><a href="Pick.html" target="_self">Pick</a></li>
         <li><a href="MyPage.html" target="_self">마이페이지</a></li>
         <li><a href="service.jsp" target="_self">고객센터</a></li>
         <li><a href="meetworld.jsp" target="_self">만남의광장</a></li>
   
      </ul>
   </div>
   <%} %>

   <div id=main>

      <div id=left>
         &nbsp;
      </div>

      <div id=center>
         <img src="formfind.gif" width=100% height=400px>
         <h2>최근 올라온 목록</h2>
         <div id=today>
            <img src="LOGO.JPG" width=80px height=80px>
            <img src="LOGO.JPG" width=80px height=80px>
            <img src="LOGO.JPG" width=80px height=80px> 
            <img src="LOGO.JPG" width=80px height=80px> 
            <img src="LOGO.JPG" width=80px height=80px>
         </div>
      </div>
      
      <div id=right></div>

   </div>

   <div id=footer>
     		phone number : 010-4525-9346<br /> e-mail : aotmaleldj@naver.com
			phone number : 010-5068-6175<br /> e-mail : ildoo5896@naver.com
      </p>
      <a href="http://facebook.com" target="_blank"> 
      <img src="facebook.gif" height="32" alt="Facebook"></a> 
      <a href="http://twitter.com" target="_blank"> 
      <img src="twitter.gif" height="32" alt="Twitter"></a> 
      <a href="http://plus.google.com" target="_blank"> 
      <img src="googleplus-icon.png" height="32" alt="Google Plus"></a>

   </div>




</body>
</html>