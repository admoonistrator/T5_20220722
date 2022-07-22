<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<script type="text/javascript" src="script.js" ></script>
<title>Login</title>

</head>

<!-- 로그인 페이지 -->
<!-- 로그인 입력폼,로그인버튼,회원가입버튼(링크),로그인후 제한된 기능 사용-->
<body>
	<div align="center">
		<br/>
		<form name="loginFrm" method="post" action=""> 
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
							<input type="button" value="로그인" onclick=
							<input type="button" value="회원가입" onClick=>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>