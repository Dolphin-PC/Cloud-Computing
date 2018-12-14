<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#login {
	width: 100%;
	height: 150px;
	margin-top: 150px;
	margin-bottom: 10px;
	text-align: center;
	border: 1;
	bordercolor: black;
	bgcolor: black;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="mystyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<%

String userid = "null";
if(session.getAttribute("userid") != null){
	userid = (String)session.getAttribute("userid");
}


int bbsid = 0;
if(request.getParameter("bbsid") != null){
	bbsid = Integer.parseInt(request.getParameter("bbsid"));
}

if(bbsid == 0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효하지 않은 글입니다.')");
	script.println("history.back()");
	script.println("</script>");
}

Bbs bbs = new BbsDAO().getBbs(bbsid);

if(!userid.equals(bbs.getUserID())){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('작성자만 확인 가능합니다.')");
	script.println("history.back()");
	script.println("</script>");
}else {
	
}

%>

<div id=wrap>
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
				<li><a href="service.html" target="_self">고객센터</a></li>
				<li><a href="meetworld.jsp" target="_self"><Strong>만남의광장</Strong></a></li>

			</ul>
		</div>

		<div id=main>

			<div id=left>&nbsp;</div>

			<div id=center>


					<table class="table table-srtiped" align="center"
						; style="text-align: center; border: 1px sold #dddddd">
						<thead>
							<tr>
								<th colspan="3"
									style="background-color: #eeeeee; text-align: center;">게시판 글보기</th>

							</tr>
						</thead>
						
						<tbody>
					<tr>
                        <td style="width:20%">글 제목</td>
                        <td colspan="2"><%=bbs.getBbsTitle()%></td>
                     </tr>
                     <tr>
                        <td>작성자</td>
                        <td colspan="2"><%=bbs.getUserID()%></td>
                     </tr>
                     
                     <tr>
                        <td>작성자</td>
                        <td colspan="2"><%=  bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분" %></td>
                     </tr>
                     <tr>
                        <td>내용</td>
                        <td colspan="2" style="min-height:200px; text-align:left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp").replaceAll("<","&lt;") %></td>
                     </tr>
							
						</tbody>
						<tr>
						<a href="update.jsp?bbsid="<%=bbsid%>><input type="button" value="수정"></a>
						<a href="deleteAction.jsp?bbsid="<%=bbsid%>><input type="button" value="수정"></a>
						</tr>
					</table>
					<br />
			</div>

			<div id=right></div>
		</div>

		<div id=footer>
			phone number : 010-4525-9346<br /> e-mail : aotmaleldj@naver.com
			phone number : 010-5068-6175<br /> e-mail : ildoo5896@naver.com
			</p>
			<a href="http://facebook.com" target="_blank"> <img
				src="facebook.gif" height="32" alt="Facebook"></a> <a
				href="http://twitter.com" target="_blank"> <img
				src="twitter.gif" height="32" alt="Twitter"></a> <a
				href="http://plus.google.com" target="_blank"> <img
				src="googleplus-icon.png" height="32" alt="Google Plus"></a>

		</div>
	</div>
</body>
</html>