<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="path1" value="${request.getContextPath() }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메인 페이지</title>
<jsp:include page="/head.jsp" />
</head>
<body>
	<jsp:include page="${path1 }/header.jsp" />

	<div class="tile is-parent">
		<article class="tile is-child box">
			<p class="title">Wide column</p>
			<p class="subtitle">Aligned with the right column</p>
			<div class="content">
				<figure class="image is-128x128">
					<img src="https://bulma.io/images/placeholders/256x256.png">
				</figure>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare magna eros, eu pellentesque tortor vestibulum ut. Maecenas non massa sem. Etiam finibus odio quis feugiat facilisis.</p>
			</div>
		</article>
	</div>

	<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>