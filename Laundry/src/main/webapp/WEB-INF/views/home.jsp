<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<style>
html, body {
	height: 100%;
}

body {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-align: center;
	align-items: center;
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
}

/* Custom default button */
.btn-secondary, .btn-secondary:hover, .btn-secondary:focus {
	color: #333;
	text-shadow: none; /* Prevent inheritance from `body` */
	background-color: #fff;
	border: .05rem solid #fff;
}
</style>

<script type="text/javascript">
	function mbtn() {
		pass = prompt('비밀번호를 입력하세요');
		if (pass == 1234) {
			location.href = "/laundry/manager";
		}
	}
</script>

</head>
<body class="text-center">

	<form class="form-signin">
		<h1 class="h3 mb-3 font-weight-normal" >**세탁소</h1>
		<p>
			<a class="btn btn-lg btn-secondary" onclick="mbtn()">관리목록</a> <a
				href="/laundry/m_join" class="btn btn-lg btn-secondary">회원가입</a>

		</p>
		<p>
			<a href="/laundry/write" class="btn btn-lg btn-secondary">주문작성</a> <a
				href="/laundry/search" class="btn btn-lg btn-secondary">주문조회</a>

		</p>
		<p class="mt-5 mb-3 text-muted">
			<a> &copy; 2017-2022</a>
		</p>
	</form>
</body>
</html>
