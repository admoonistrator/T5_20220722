<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<script type="text/javascript" src="script.js" ></script>
<title>Login</title>
<link href="css.css" rel="stylesheet" type="text/css">
</head>

<!-- 로그인 페이지 -->
<!-- 로그인 입력폼-->
<!--  -->
<body>
	<div align="center">
		<br/>
		<!-- loginProc, id,비밀번호 일치 확인(로그인에 성공했다., 아이디 또는 비밀번호가 존재하지 않음) -->
		<form name="loginFrm" method="post" action="loginProc.jsp"> 
			<table>
				<tr>
					<td align="center" colspan="2"><h2>로그인</h2></td>
				</tr>
				<tr>
					<td>아 이 디</td>
					<td><input name="id" size="20"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd" size="20"></td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="right">
							<!--로그인버튼  script.js loginCheck() 입력하지 않을때(공백) alert -->
							<!-- &nbsp; 공백띄우기 -->
							<input type="button" value="로그인" onclick="loginCheck()">&nbsp;&nbsp;>
							<!--회원가입버튼(링크) member.jsp 이동 -->
							<input type="button" value="회원가입" onClick="javascript:location.href='member.jsp'">
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>

