<%@page import="Beans.MemberBean"%>
<%@page import="DAO.MemberMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- id중복확인버튼 -->
<%
	request.setCharacterEncoding("UTF-8");
	
	String id=request.getParameter("id");
	System.out.println(id);
	
	MemberMgr mgr = new MemberMgr();
	int idcheck = mgr.idcheck(id);
	
	if(idcheck!=0){
%>
	<script type="text/javascript">
		alert("ID가 중복되었습니다.");			
		history.go(-1);
	</script>		
<% 					
	} else {
%>
	<script type="text/javascript">
		alert("id가 사용 가능합니다");
		history.go(-1);
	</script>
<% 	
	}
%>
</body>
</html> 