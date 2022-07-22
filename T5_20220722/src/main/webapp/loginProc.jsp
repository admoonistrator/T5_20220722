<%@page import="DAO.MemberMgr"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>loginProc</title>
</head>
<!--  id password 일치 여부-->
<!--  -->

<body>
<% 
	// login.jsp id pwd 정보 가져오기
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	//db에 pw정보 불러오기
	MemberMgr mem=new MemberMgr();
	String check_pwd=mem.getPass(id);
		
	if(pwd.equals(check_pwd)){
		%>
		<script type = "text/javascript">
			alert("로그인에 성공했다.");	
		</script>
		<% response.sendRedirect("success.jsp?id="+id); %>
<%		
	} 
	else if(pwd.equals("")) {
%>	
		<script type = "text/javascript">
			alert("아이디 또는 비밀번호가 존재하지 않음");
			history.go(-1);
		</script>
<%	
	} else {
%>
		<script type = "text/javascript">
			alert("비밀번호 틀림");
			history.go(-1);
		</script>
<%	
	}
%>
</body>
</html>