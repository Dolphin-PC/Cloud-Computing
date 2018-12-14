<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page"/>
<jsp:setProperty name="bbs" property="bbsTitle"/>
<jsp:setProperty name="bbs" property="bbsContent"/>
<!DOCTYPE html>
<html>
<head>
<style>

#login{
	width:100%;
	height:150px;
	margin-top:150px;
	margin-bottom:10px;
	text-align:center;
	border:1;
	bordercolor:black;
	bgcolor:black;
}

</style>
<meta charset="EUC-KR">
<title>Lost It</title>
<link href="mystyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
	String userid = null;
	if(session.getAttribute("userid") != null){
		userid = (String)session.getAttribute("userid");
	}

	int pageNumber = 1;
	if(request.getParameter("pageNumber")!=null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
			<li><a href="service.jsp" target="_self">고객센터</a></li>
			<li><a href="meetworld.jsp" target="_self"><Strong>만남의광장</Strong></a></li>

		</ul>
	</div>

	<div id=main>

		<div id=left>
		&nbsp;
		</div>
		
		<div id=center>
		
		<h2>안전을 위해 만남의 장소를 비밀글로 남겨주세요.</h2>
		<table class="table table-srtiped" align="center"; style="text-align:center; border:1px sold #dddddd"">
		 	<colgroup>

               <col width="80" />

               <col width="300" />

               <col width="80" />

               <col width="100" />

           </colgroup>
           <thead>  
			<tr>
				<th style="background-color:#eeeeee; text-align: center;">글번호</th>
				<th style="background-color:#eeeeee; text-align: center;">제목</th>
				<th style="background-color:#eeeeee; text-align: center;">작성자</th>
				<th style="background-color:#eeeeee; text-align: center;">작성일</th>
			</tr>
			</thead>
			<tbody>
			<%
				BbsDAO bbsDAO = new BbsDAO();
				ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
				for(int i = 0; i< list.size(); i++){
					
			
			%>
			<tr>
				<td><%= list.get(i).getBbsID() %></td>
				<td><a href="view.jsp?bbsid=<%= list.get(i).getBbsID() %>"><%=list.get(i).getBbsTitle() %></a></td>
				<td><%= list.get(i).getUserID() %></td>
				<td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시" + list.get(i).getBbsDate().substring(14, 16) + "분" %></td>
			</tr>
			<%
				}
			%>	
			</tbody>
				
		</table>
		<% 
			if(pageNumber != 1){
		%>
			<input type="button" value="이전" style="align:left;"onclick="location.href='meetworld.jsp?pageNumber=<%=pageNumber - 1%>'">
		<%
			}if(bbsDAO.nextPage(pageNumber+1)){
		%>
			<input type="button" value="다음" style="align:left;" onclick="location.href='meetworld.jsp?pageNumber=<%=pageNumber + 1%>'">
		<%
			}
		%>
		<br/>
		<input type="button" style="align:right;" value="글쓰기"; onclick="location.href='write.html'">
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
</div>
</body>
</html>