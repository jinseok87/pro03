<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
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
<section class="hero is-warning">
<figure class="image is-128x128">
  <img src="${path1 }/data/main1.jpg">
</figure>
</section>
	<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>