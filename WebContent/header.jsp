<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
<c:set var="path2" value="${pageContext.request.contextPath }" />
<div class = "nav_wrap">

<nav class="navbar" role="navigation" aria-label="main navigation">
	<div class="navbar-brand">
		<a class="navbar-item" id="logo" href="<%=request.getContextPath()%>/"> </a>
		<a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
			<span aria-hidden="true"></span>
			<span aria-hidden="true"></span>
			<span aria-hidden="true"></span>
		</a>
	</div>

	<div id="navbarBasicExample" class="navbar-menu">
		<div class="navbar-start">

			<a class="navbar-item" href="<%=request.getContextPath()%>/GetNoticeListCtrl.do"> Notice </a>

			<div class="navbar-item has-dropdown is-hoverable">
				<a class="navbar-link"> More </a>

				<div class="navbar-dropdown">
					<a class="navbar-item"> About </a>
					<a class="navbar-item"> Jobs </a>
					<a class="navbar-item"> Contact </a>
					<hr class="navbar-divider">
					<a class="navbar-item"> Report an issue </a>
				</div>
			</div>
		</div>

		<div class="navbar-end">
			<div class="navbar-item">
				<div class="buttons">
					<a class="button is-light" href="${path2 }/user/login.jsp"> 로그인 </a>
					<a class="button is-light"> 회원가입 </a>
				</div>
			</div>
		</div>
	</div>
</nav>
</div>