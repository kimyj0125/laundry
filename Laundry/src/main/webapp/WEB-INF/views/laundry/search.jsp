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


</head>
<body class="text-center">

	<form class="form-signin">
		<h1 class="h3 mb-3 font-weight-normal">choice</h1>
		<p>
			<a href="nm_search" class="btn btn-lg btn-secondary">비회원주문</a>
			<a href="m_search" class="btn btn-lg btn-secondary">회원주문</a>
		</p>
		<p class="mt-5 mb-3 text-muted">
			<a> &copy; 2017-2022</a>
		</p>
	</form>
</body>
</html>
