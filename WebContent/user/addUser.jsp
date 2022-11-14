<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="path1" value="<%=request.getContextPath()%>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<jsp:include page="/head.jsp" />
</head>
<body>
	<jsp:include page="../header.jsp" />
	<section class="section">
		<div class="container">
			<h1 class="title">회원가입</h1>
			<form action="${path1 }/AddNoticeCtrl.do" method="post">
				<table class="table">
					<tbody>
						<tr>
							<th>아이디</th>
							<td><input type="text" class="input" maxlength="120" name="id" id="id" placeholder="아이디입력" required /></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="text" class="input" name = "pw" id = "pw"></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="text" class="input" name = "pw" id = "pw"></td>
						</tr>
					</tbody>
				</table>
				<div class="buttons">
					<button type="submit" class="button is-success">등록</button>
					<button type="reset" class="button is-warning">취소</button>
					<a href="${path1 }/GetNoticeListCtrl.do" class="button is-info">목록</a>
				</div>
			</form>
		</div>
	</section>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>