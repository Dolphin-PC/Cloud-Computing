<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<% request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String userid = null;
	if(session.getAttribute("userid")!= null){
		userid = (String) session.getAttribute("userid");
	}
	
	if(userid == null){
	      PrintWriter script = response.getWriter();
	      script.println("<script>");
	      script.println("alert('로그인을 하세요.')");
	      script.println("location.href = 'login.html'");
	      script.println("</script>");
	      
	   }
	int bbsid = 0;
	if(request.getParameter("bbsid")!=null){
		bbsid = Integer.parseInt(request.getParameter("bbsid"));
	}
	if(bbsid == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다..')");
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsid);
	if(!userid.equals(bbs.getUserID())){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('.')");
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");
	}else{
		  	if(request.getParameter("bbsTitle")==null||request.getParameter("bbsContent")==null
		  			||request.getParameter("bbsTitle").equals("")||request.getParameter("bbsContent").equals("")){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력이 안 된 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}else{
				BbsDAO bbsDAO = new BbsDAO();
				int result = BbsDAO.update(bbsid, request.getParameter("bbsTitle"), request.getParameter("bbsContent"));
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('글수정에 실패했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else{
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'meetworld.jsp'");
					script.println("</script>");
				}
			}
	   }

		
	
	
	
	%>
</body>
</html>