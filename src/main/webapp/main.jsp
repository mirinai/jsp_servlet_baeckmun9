<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${empty loginUser}">
	<jsp:forward page="login.do"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<script type="text/javascript" src="member.js"></script>
</head>
<body>
<h2>회원 전용 페이지</h2>
<form action="logout.do">
	<table>
		<tr>
			<td>
				이름(아이디): ${loginUser.name}(${loginUser.userid}) 로그인함
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="로그아웃">&nbsp;&nbsp;
				<input type="button" value="회원정보바꾸기" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">
			</td>
		</tr>
	</table>
</form>
	
</body>
</html>