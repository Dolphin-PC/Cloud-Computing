<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.User"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="user" class = "user.User" scope="page"/>
<jsp:setProperty name="user" property="userid"/>
<jsp:setProperty name="user" property="passwd"/>
<jsp:setProperty name="user" property="username"/>
<jsp:setProperty name="user" property="gender"/>
<jsp:setProperty name="user" property="year"/>
<jsp:setProperty name="user" property="year2"/>
<jsp:setProperty name="user" property="year3"/>
<jsp:setProperty name="user" property="email"/>
<jsp:setProperty name="user" property="phone"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>Insert title here</title>
</head>
<body>
   <%
      if(user.getUserid()==null || user.getPasswd()==null || user.getUsername()==null || 
            user.getGender()==null || user.getYear()==null || user.getYear2()==null || 
            user.getYear3()==null || user.getEmail()==null || user.getPhone()==null )
      {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('입력이 안된 사항이 있습니다.')");
         script.println("location.href = 'register.html'");
         script.println("</script>");
      }
      else {
      UserDAO userDAO = new UserDAO();
      int result = userDAO.join(user);
      if (result == -1){
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('이미 존재하는 아이디입니다.')");
         script.println("histroy.go(-2)");
         script.println("</script>");
      }
      else {
         session.setAttribute("userID",user.getUserid());
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('회원가입이 성공적으로 이루어졌습니다.')");
         script.println("location.href = 'main.jsp'");
         script.println("</script>");
      }
      }
   %>

</body>
</html>