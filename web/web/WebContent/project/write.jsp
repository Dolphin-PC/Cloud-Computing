<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
				<li><a href="meetworld.html" target="_self"><Strong>만남의광장</Strong></a></li>

			</ul>
		</div>

		<div id=main>

			<div id=left>&nbsp;</div>

			<div id=center>

				<h2>안전을 위해 만남의 장소를 비밀글로 남겨주세요.</h2>
				<form method="post" action="writeAction.jsp">
					<table class="table table-srtiped" align="center"
						 style="text-align: center; border: 1px sold #dddddd">
						<thead>
							<tr>
								<th colspan="2"
									style="background-color: #eeeeee; text-align: center;">게시판글쓰기양식</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control" placeholder="글 제목"
									name="bbsTitle"></td>
							</tr>
							<tr>
								<td><textarea class="form-control" placeholder="글 내용"
										name="bbsContent" maxlength="2048" style="height: 250px;"></textarea></td>

							</tr>
						</tbody>
						
					</table>
					<input type="submit" class="btn btn-primary pull right" value="글쓰기">
					<br />
					</form>
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