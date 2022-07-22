<%@page import="DAO.MemberMgr"%>
<%@page import="Beans.MemberBean"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Success</title>

</head>
<!-- 로그인 성공시 해당 클라이언트 정보보옂기 -->
<body>

<div align="center">
	<table>
		<tr>
			<td>아이디 :</td> 
			<td></td>
		</tr>
		
		<tr>
			<td>이름 :</td> 
			<td></td>
		</tr>
		
		<tr>
			<td>성별 :</td>
			<td></td>
		</tr>
		
		<tr>
			<td>생일 :</td>
			<td></td>
		</tr>
		
		<tr>
			<td>주소 :</td> 
			<td></td>
		</tr>

		<tr>
			<td>취미 :</td>
			<td></td>
		</tr>

		<tr>
			<td colspan="2" align="right">
				<input type = "button" onclick = "'" value = "로그아웃">
			</td>
		</tr>
	</table>
</div>
</body>
</html>