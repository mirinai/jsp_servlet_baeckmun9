<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idcheck</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/script/member.js"></script>
</head>
<body>
	<h2>아이디 중복확인</h2>
	<form action="idCheck.do" method="get" name="frm">
		아이디  <input type="text" name="userid" value="${userid}">
		<input type="submit" value="중복체크">
		<br>
		<c:if test="${result == 1}">
			<script type="text/javascript">
				opener.document.frm.value="";
			</script>
			${userid}는 이미 쓰이는 아이디임
		</c:if>
		<c:if test="${result == -1}">
			${userid}는 쓸 수 있는 아이디임
			<input type="button" value="사용" class="cancel" onclick="idok()">
		</c:if>
	</form>
</body>
</html>