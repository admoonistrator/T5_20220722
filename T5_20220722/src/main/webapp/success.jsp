<%@page import="DAO.MemberMgr"%>
<%@page import="Beans.MemberBean"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Success</title>
<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
	MemberMgr mg = new MemberMgr();
	String id = request.getParameter("id");
	MemberBean bean = new MemberBean();
	bean = mg.getOne(id);
%>

<div align="center">
	<table>
		<tr>
			<td>아이디 :</td> 
			<td><%= bean.getId()%></td>
		</tr>
		
		<tr>
			<td>이름 :</td> 
			<td><%= bean.getName() %></td>
		</tr>
		
		<tr>
			<td>성별 :</td>
			<td><%= bean.getGender() %></td>
		</tr>
		
		<tr>
			<td>생일 :</td>
			<td><%= bean.getBirth() %></td>
		</tr>
		
		<tr>
			<td>주소 :</td> 
			<td><%= bean.getAddress() %></td>
		</tr>

		<tr>
			<td>취미 :</td>
			<td><%= bean.getHobby() %></td>
		</tr>

		<tr>
			<td colspan="2" align="right">
				<input type = "button" onclick = "location.href = 'logout.jsp'" value = "로그아웃">
			</td>
		</tr>
	</table>
</div>
</body>
</html>