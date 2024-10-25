/**
 * 
 */
//-----------------
// 로그인
const loginCheck = () => {
	if (document.frm.userid.value.length == 0) {
		alert("아이디를 쓰세요");
		frm.userid.focus();
		return false;
	}
	if (document.frm.pwd.value == "") {
		alert("암호는 반드시 입력해야 함");
		frm.pwd.focus();
		return false;
	}
	return true;
}

//-----------------
// 회원가입

function idCheck() {
	if (document.frm.userid.value == "") {
		alert("아이디를 입력해 주세요");
		document.frm.userid.focus();
		return;
	}
	const url = "idCheck.do?userid=" + document.frm.userid.value;
	window.open(url, "_blank_1",
		"toolbar=no, menubar=no, scrollbar=yes, resizable=no, width=450, height=200"
	);

}

//아이디 겹치는 지 체크한 뒤에 처리하기 위한 함수
const idok = () => {
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	self.close();
}

//회원 정보의 유효성을 체크하기 위한 함수
function joinCheck() {
	if (document.frm.name.value.length == 0) {
		alert("이름을 써라");
		frm.name.focus();
		return false;
	}
	else if (document.frm.userid.value.length == 0) {
		alert("아이디를 써라");
		frm.userid.focus();
		return false;
	}
	else if (document.frm.userid.value.length < 4) {
		alert("아이디는 4글자 이상 써야 함");
		frm.userid.focus();
		return false;
	}
	else if (document.frm.pwd.value.length == "") {
		alert("비밀번호는 반드시 있어야 함");
		frm.pwd.focus();
		return false;
	}
	else if(document.frm.pwd.value != document.frm.pwd_check.value){
		alert("비밀번호가 다름");
		frm.pwd.focus();
		return false;
		
	}
	else if(document.frm.reid.value.length==0){
		window.alert("중복체크를 하지 않음");
		frm.userid.focus();
		return false;
	}
	else{
		return true;
	}
	
}