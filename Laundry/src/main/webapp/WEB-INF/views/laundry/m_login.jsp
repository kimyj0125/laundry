<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성</title>


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
html, body {
	height: 100%;
}

body {
	-ms-flex-align: center;
	align-items: center;
	padding-top: 140px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.container {
	max-width: 960px;
}

.lh-condensed {
	line-height: 1.25;
}

p {
	width: 800px;
}
</style>



</head>

<body class="bg-light">

	<div class="container">
		<div class="col-md-8 order-md-1">
			<h4 class="mb-3">회원번호</h4>
			<form method="post">
				<div class="mb-3">
					<label for="username">회원번호</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" class="form-control" name="userid"
							placeholder="userid" required>

					</div>
				</div>		

				<hr class="mb-4">
				<button class="btn btn-primary btn-lg btn-block" type="submit">등록</button>
			</form>
		</div>


	</div>


</body>
</html>