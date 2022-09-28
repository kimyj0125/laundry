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

<script>
		var a = 1;
		var i=1;
        const add_textbox = () => {
        	a++;
        	i++;
        	const box = document.getElementById("box");
            const newP = document.createElement('p');
            if(i<4){
            	newP.innerHTML = "<div class='col-md-5 mb-3'>"+
			"<label for='clothing'>옷 </label> <select class='custom-select d-block w-100' name='clothing"+a+"' required>"+
			"<option value=''>Choose...</option>"+
			"<option value='shirt'>셔츠</option>"+
			"<option value='jeans'>청바지</option>"+
			"<option value='coat'>코트</option></select></div>"+
			"<div class='col-md-3 mb-3'>"+
			"<label for='count'>수량</label> <input type='text' name='count"+a+"' class='form-control'></div>"+
			"<input type='button' class='btn btn-dark' value='삭제' onclick='remove(this)'>";
            }else{
            	$('button').removeAttr('add_textbox');
            	i=1;
            }
            
            
			box.appendChild(newP);
			}
        const remove = (obj) => {
            document.getElementById('box').removeChild(obj.parentNode);
            i--;
            a--;
        }
    </script>


</head>

<body class="bg-light">

	<div class="container">
		<div class="col-md-8 order-md-1">
			<h4 class="mb-3">등록정보</h4>
			<form method="post">


				<div class="mb-3">
					<label for="username">이름</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" class="form-control" name="name"
							placeholder="이름" required>

					</div>
				</div>
				<div class="mb-3">
					<label for="phone">Phone</label>
					<div class="form-row">

						<div class="col">
							<input type="tel" class="form-control" name="phone1">
						</div>
						-
						<div class="col">
							<input type="tel" class="form-control" name="phone2">
						</div>
						-
						<div class="col">
							<input type="tel" class="form-control" name="phone3">
						</div>

					</div>
				</div>
				<div class="mb-3">
					<label for="address">주소</label> <input type="text"
						class="form-control" name="address" placeholder="**동 **아파트"
						required>
				</div>
				<div class="mb-3">
					<label for="username">상세주소</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"></span>
						</div>
						<input type="text" class="form-control" name="addressd"
							placeholder="***동***호" required>

					</div>
				</div>



				<label for="address">등록(최대 3개)</label>
				<div class="row" id="box">

					<div class="col-md-5 mb-3">
						<label for="clothing">옷 </label> <select
							class="custom-select d-block w-100" name="clothing1" required>
							<option value="">Choose...</option>
							<option value="shirt">셔츠</option>
							<option value="jeans">청바지</option>
							<option value="coat">코트</option>
						</select>
					</div>
					<div class="col-md-3 mb-3">
						<label for="count">수량</label> <input type="text" name="count1"
							class="form-control">
					</div>
					<div class="col-md-3 mb-3">
						<button type="button" class="btn btn-dark" onclick="add_textbox()">추가</button>
					</div>


				</div>






				<div class="form-group row">
					<label class="col-sm-2">상세 정보</label>
					<div class="col-sm-5">
						<textarea name="detail" cols="150" rows="3" class="form-control"></textarea>
					</div>
				</div>

				<hr class="mb-4">
				<button class="btn btn-primary btn-lg btn-block" type="submit">등록</button>
			</form>
		</div>


	</div>


</body>
</html>