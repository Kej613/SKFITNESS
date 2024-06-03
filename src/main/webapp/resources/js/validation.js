function CheckAddMember() {
	

	
	var id= document.getElementById("id");
	var name = document.getElementById("name");
	var passwd = document.getElementById("passwd");

	if (!check(/^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/,id, "아이디는 문자로 시작해주세요!"))
		return false; 
	
	if(!check(/^[가-힣]*$/,name,"이름은 한글만 입력해주세요!")) {
		name.select();
		name.focus();
		return false;
	}
	
	if(!check(/^[0-9]*$/, password, "비밀번호는 숫자만 입력해주세요 !")) {
		password.select();
		password.focus();
		return false;
	}
	
	function check(regExp, e, msg) {
		if(regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	
	
	}
	document.newMember.submit();
	}
		