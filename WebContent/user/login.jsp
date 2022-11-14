<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var = "path1" value = "${request.ContextPath() }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/head.jsp" />
<title>로그인 페이지</title>
</head>
<body>
	<h2 class="title is-2">로그인 페이지</h2>
	<form action="${path1 }/loginCtrl">
		<table class="table is-narrow">
			<tbody>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="u_id" id="u_id" placeholder="아이디 입력" class="form-control" autofocus required /></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="u_pw" id="u_pw" placeholder="비밀번호입력" required></td>
				</tr>
			</tbody>
		</table>
		
		
		<div class="buttons">
			<input type="submit" value="확인" class="button is-warning is-focused"> <input type="reset" value="취소" class="button is-warning is-focused">
		</div>
		<a href="" class="button is-link is-inverted">회원가입</a>
	</form>


</body>
</html>