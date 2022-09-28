<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">회원 주문 관리</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor01" aria-controls="navbarColor01"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="manager">Back <span class="sr-only">(current)</span>
				</a></li>

			</ul>

		</div>
	</nav>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">이름</th>
				<th scope="col">전화번호</th>
				<th scope="col">주소</th>
				<th scope="col">상세주소</th>
				<th scope="col">옷</th>
				<th scope="col">개수</th>
				<th scope="col">상세</th>
				<th scope="col">상태</th>
				<th scope="col"></th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${molist}" var="molist">
				<tr>
					<td>${molist.name}</td>
					<td>${molist.phone1}-${molist.phone2}-${molist.phone3}</td>
					<td>${molist.address}</td>
					<td>${molist.addressd}</td>
					<td>${molist.clothing1},${molist.clothing2},${molist.clothing3}</td>
					<td>${molist.count1},${molist.count2},${molist.count3}</td>
					<td>${molist.detail}</td>
					<td>${molist.state}</td>
					<td><a href="/laundry/mocomplete?mono=${molist.mono}"
						type="button" class="btn btn-outline-info">완료</a> <a
						href="/laundry/modelete?mono=${molist.mono}" type="button"
						class="btn btn-outline-danger">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html>