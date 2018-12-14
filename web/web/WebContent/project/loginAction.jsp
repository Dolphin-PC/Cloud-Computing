<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="user.User"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="user" class = "user.User" scope="page"/>
<jsp:setProperty name="user" property="userid"/>
<jsp:setProperty name="user" property="passwd"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>Insert title here</title>
</head>
<body>
   <%
      String userid = null;
      if(session.getAttribute("userid")!=null){
         userid=(String) session.getAttribute("userid");
      }
      
      UserDAO userDAO = new UserDAO();
      int result = userDAO.login(user.getUserid(),user.getPasswd());
      if (result == 1){
         session.setAttribute("userid",user.getUserid());
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("location.href = 'main.jsp'");
         script.println("</script>");
      }
      else if(result == 0){
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('비밀번호가 틀립니다.')");
         script.println("history.back()");
         script.println("</script>");
      }
      else if(result == -1){
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('존재하지 않는 아이디입니다.')");
         script.println("history.back()");
         script.println("</script>");
      }
      else if(result == -2){
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('데이터베이스 오류가 발생했습니다.')");
         script.println("history.back()");
         script.println("</script>");
      }
   %> 

</body>
</html>