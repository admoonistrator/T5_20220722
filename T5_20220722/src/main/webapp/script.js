/**
 * 
 */

//?
function idcheck(){
	function idcheck(){
	var id = document.regFrm.id.value;
	location.href = "idCheck.jsp?id="+id;
	
}


//id pw null 값 체크
function loginCheck() {
	if (document.loginFrm.id.value == "") {
		alert("아이디를 입력해 주세요.");
		document.loginFrm.id.focus();
		return false;
	}
	if (document.loginFrm.pwd.value == "") {
		alert("비밀번호를 입력해 주세요.");
		document.loginFrm.pwd.focus();
		return false;
		}
		
	document.loginFrm.submit();
	}
	
	}

	function inputCheck(){
	if(document.regFrm.id.value==""){
		alert("아이디를 입력해 주세요.");
		document.regFrm.id.focus();
		return false;
	}
	if(document.regFrm.pwd.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.regFrm.pwd.focus();
		return false;
	}
	if(document.regFrm.repwd.value==""){
		alert("비밀번호를 확인해 주세요");
		document.regFrm.repwd.focus();
		return false;
	}
	if(document.regFrm.pwd.value != document.regFrm.repwd.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regFrm.repwd.value="";
		document.regFrm.repwd.focus();
		return false;
	}
	if(document.regFrm.name.value==""){
		alert("이름을 입력해 주세요.");
		document.regFrm.name.focus();
		return false;
	}
	if(document.regFrm.birth.value==""){
		alert("생년월일을 입력해 주세요.");
		document.regFrm.birth.focus();
		return false;
	}
	if(document.regFrm.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.regFrm.email.focus();
		return false;
	}
	return true;
	}
