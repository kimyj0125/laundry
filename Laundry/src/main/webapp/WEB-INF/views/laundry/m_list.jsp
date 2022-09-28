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
		<a class="navbar-brand" href="#">회원 관리</a>
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
				<th scope="col">회원번호</th>
				<th scope="col">이름</th>
				<th scope="col">전화번호</th>
				<th scope="col">주소</th>
				<th scope="col">상세주소</th>

				<th scope="col"></th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${mlist}" var="mlist">
				<tr>
					<td>${mlist.userid}</td>
					<td>${mlist.name}</td>
					<td>${mlist.phone1}-${mlist.phone2}-${mlist.phone3}</td>
					<td>${mlist.address}</td>
					<td>${mlist.addressd}</td>
					<td><a href="/laundry/mdelete?userid=${mlist.userid}"
						type="button" class="btn btn-outline-danger">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html>