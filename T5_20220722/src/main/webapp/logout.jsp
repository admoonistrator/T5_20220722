<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
	<!-- 로그아웃 강제로 login.jsp로 이동 -->
<body>
<%
	session.invalidate(); 
	//세션에 등록된 데이터 전체삭제 모든 속성 제거
	response.sendRedirect("login.jsp"); 
	//메인 login.jsp 페이지이동
%>

</body>
</html>