<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, java.lang.*"%>
<%@ page import="java.text.*, java.net.InetAddress"%>
<c:set var="path1" value="${request.ContextPath() }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/head.jsp" />
<title>로그인 페이지</title>
<<<<<<< HEAD


<style >
    .page_wrap{
    display:block;
    margin: auto;
    margin-top :100px;
    
    height:400px;
    width :400px;
    text-align: center;
    }
    .title{
    margin-bottom: 30px;
    }
    tbody input{
    height :35px;
    width : 250px;
    }
    .buttons{
    display: block;
    margin-left: 80px;
}
.buttons input{
    text-align : center;
    width:100px;
    }

    
    </style>
    </head>
    <body>
        <jsp:include page="/header.jsp" />
        <div class="page_wrap">
            <h2 class="title is-2">로그인 페이지</h2>
            <form action="${path1 }/UserLoginCtrl.do" method="post" onsubmit="return joinCheck(this)">
                <table class="table is-narrow">
                    <tbody>
                        <tr>
                            <th>아이디</th>
                            <td>
                                <div>
                                    <input type="text" name="id" id="id" placeholder="아이디 입력" class="form-control" autofocus required />
                                </div>
                                <div>
                                    <c:if test="${empty msg }">
                                        <p></p>
                                    </c:if>
                                    <c:if test="${not empty msg }">
                                        <p>${msg }</p>
                                    </c:if>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호</th>
                            <td><input type="password" name="pw" id="pw" placeholder="비밀번호입력" required></td>
                        </tr>
                    </tbody>
                </table>
                <div class="buttons">
                    <input type="submit" value="확인" class="btn1 button is-outlined"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" value="취소" class="btn2 button is-outlined">
                </div>
            </form>
        </div>
        <jsp:include page="${path1 }/footer.jsp" />
    </body>
    </html>
=======
</head>
<body>
	<jsp:include page="/header.jsp" />
	<h2 class="title is-2">로그인 페이지</h2>
	<form action="${path1 }/UserLoginCtrl.do" method="post" onsubmit="return joinCheck(this)">
		<table class="table is-narrow">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>
						<div>
							<input type="text" name="u_id" id="u_id" placeholder="아이디 입력" class="form-control" autofocus required />
						</div>
						<div>
							<c:if test="${empty msg }">
								<p></p>
							</c:if>
							<c:if test="${not empty msg }">
								<p>${msg }</p>
							</c:if>
						</div>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw" id="pw" placeholder="비밀번호입력" required></td>
				</tr>
			</tbody>
		</table>
		<div class="buttons">
			<input type="submit" value="확인" class="button is-warning is-focused">
			<input type="reset" value="취소" class="button is-warning is-focused">
		</div>
		<a href="${path1 }/user/agree.jsp" class="button is-warning is-focused">회원가입</a>
	</form>

	<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>
>>>>>>> bd9f635f01f685b8cb64d4ea97c580d27cd8a2e2
