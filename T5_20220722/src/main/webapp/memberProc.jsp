<%@page import="DAO.MemberMgr"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>memberProc</title>
</head>
<!-- 회원가입 입력 -->
<!-- 로그인 링크-->
<!--  -->
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String h[]=request.getParameterValues("hobby");
	String hobby="";
	for(int i=0;i<h.length;i++){
		if(h[i]!=null){
			hobby+=h[i]+" / ";	
		}
	}
%>
	<jsp:useBean id="mbean" class="Beans.MemberBean">
	<jsp:setProperty property="*" name="mbean"/>
	</jsp:useBean>
<%
	MemberMgr mgr= new MemberMgr();
	mbean.setHobby(hobby);
	mgr.memberjoin(mbean);
%>
	<script type="text/javascript">
		alert("회원가입 성공 로그인 해주세요.");
		location.href="login.jsp";
	</script>


</body>
</html>