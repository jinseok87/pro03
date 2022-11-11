<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import=" java.text.*, java.net.InetAddress"%>
<%@ include file="common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!--jstl el 사용하려면 작성  -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%><!--jstl el 사용하려면 작성  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table">
		<thead>
			<tr>
				<th><abbr title="No">no</abbr></th>
				<th><abbr title="Title">tilte</abbr></th>
				<th><abbr title="Result">RegDate</abbr></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="dto" varStatus="status">
				<tr>
					<th>${status.count }</th>
					<td><a href="${path1 }/GetNoticeCtrl.do?no=$dto.no}">${dto.tilte }</a></td>
					<td>
					<fmt:parseDate value="${dto.refDate }"</td>
					<td>12</td>
					<td>3</td>
					<td>68</td>
					<td>36</td>
					<td>+32</td>
					<td>81</td>
				</tr>
			</c:forEach>
		</tbody>
</body>
</html>