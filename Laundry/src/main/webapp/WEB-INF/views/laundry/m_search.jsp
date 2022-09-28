<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>msearch</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">회원 검색</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="http://localhost:8080/">Home <span class="sr-only">(current)</span>
				</a></li>

			</ul>
			<form class="form-inline">
				<input type="text" class="form-control" id="userid"
					placeholder="아이디 입력" aria-label="Recipient's username"
					aria-describedby="button-addon2">
				<button class="btn btn-outline-secondary" type="button"
					id="msearchBtn" onclick="getTell()">검색</button>
			</form>
		</div>
	</nav>

	<script>
		function getTell() {
			let userid = document.getElementById('userid').value;
			location.href = "/laundry/m_search?userid=" + userid;
		};
	</script>


	<table class="table">
		<thead>
			<tr>
				<th scope="col">이름</th>
				<th scope="col">전화번호</th>
				<th scope="col">주소</th>
				<th scope="col">옷</th>
				<th scope="col">개수</th>
				<th scope="col">상세</th>
				<th scope="col">상태</th>

			</tr>
		</thead>

		<tbody>
			<c:forEach items="${msearch}" var="msearch">
				<tr>
					<td>${msearch.name}</td>
					<td>${msearch.phone1}-****-${msearch.phone3}</td>
					<td>${msearch.address}</td>
					<td>${msearch.clothing1},${msearch.clothing2},${msearch.clothing3}</td>
					<td>${msearch.count1},${msearch.count2},${msearch.count3}</td>
					<td>${msearch.detail}</td>
					<td>${msearch.state}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html>