<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
<link href="mystyle.css" rel="stylesheet" type="text/css">
<style>
td{
text-align:left;
}
</style>
</head>
<body>

	<div id="main">
	<div id="left">&nbsp;</div>
	<div id="center">
	<div id=header>
		<a href="main.html" target="_self"><img src="LOGO.png" width=200px; height=50px;></a>
	</div>
			<form action="loginAction.jsp" method="post">
						<table align="center">
					 			<br/>
								 <tr>
								 <td><input type="text" name= "userid" placeholder="아이디" class="inp-field" style="height:30px; width:300px"></td>
								</tr>
						</table>

						<table align="center">
								<br/>
								<tr>
								<td><input type="password" name="passwd" placeholder="비밀번호"
									class="inp-field"style="height:30px; width:300px"> <span class="ico pass"></span></td>
								</tr>

						</table>
						
						<table align="center">
							<tr>
							<br/>
							<input type="submit" value="로그인"  style="height:30px; width:306px">
							</tr>
						</table>
						
						</form>
	</div>
	</div>
	

</body>
</html>