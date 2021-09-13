<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Checkout example · Bootstrap v4.6</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/checkout/">
	

    <!-- Bootstrap core CSS -->
	<link href="${pageContext.request.contextPath}/resources/css/join.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    
	<div class="container">
		<div class="py-5 text-center">
			<img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/images/join.png" alt="" width="125" height="125">
		</div>
		
		<form class="needs-validation" novalidate action="${pageContext.request.contextPath}/join" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		
		<div class="mb-3">
			<label>아이디</label>
			<input type="text" class="form-control" id="" name="id" placeholder="아이디를 입력해주세요." required>
			<div class="invalid-feedback">Please enter your shipping address.</div>
		</div>
		
		<div class="row">
		
		<div class="col-md-6 mb-3">
			<label>비밀번호</label>
			<input type="password" class="form-control" id="" name="pw" placeholder="비밀번호를 입력해주세요." value="" required>
			<div class="invalid-feedback">Valid first name is required.</div>
		</div>
		
		<div class="col-md-6 mb-3">
			<label>비밀번호 확인</label>
			<input type="password" class="form-control" id="" name="pw1" placeholder="비밀번호를 입력해주세요." value="" required>
			<div class="invalid-feedback">Valid last name is required.</div>
		</div>
		
		</div>
		
		<div class="mb-3">
			<label for="address2">연락처</label>
			<input type="text" class="form-control" id="" name="phone" placeholder="연락처를 입력해주세요.">
		</div>

        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="country">시도별</label>
            <select class="custom-select d-block w-100" name="city">
				<option value="Seoul">서울</option>
				<option value="Busan">부산</option>
				<option value="Daegu">대구</option>
				<option value="Incheon">인천</option>
				<option value="Gwangju">광주</option>
				<option value="Daejeon">대전</option>
				<option value="Ulsan">울산</option>
				<option value="Sejong">세종</option>
				<option value="Gyeonggi">경기</option>
				<option value="Gangwon">강원</option>
				<option value="Chungcheongbuk">충북</option>
				<option value="Chungcheongnam">충남</option>
				<option value="Jeollabuk">전북</option>
				<option value="Jeollanam">전남</option>
				<option value="Gyeongsangbuk">경북</option>
				<option value="Gyeongsangnam">경남</option>
				<option value="Jeju">제주</option>
            </select>
            <div class="invalid-feedback">
              Please select a valid country.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="state">권한</label>
            <select class="custom-select d-block w-100" name="role">
				<option value="1LEVEL">주민</option>
				<option value="2LEVEL">구,시,군의장</option>
				<option value="3LEVEL">시,도지사</option>
            </select>
            <div class="invalid-feedback">
              Please provide a valid state.
            </div>
          </div>
        </div>

        <h4 class="mb-3">동의사항</h4>

        
		<div class="custom-control custom-checkbox">
			<input type="checkbox" class="custom-control-input" id="same-address">
			<label class="custom-control-label" for="same-address">개인정보 수집 및 이용을 동의하십니까?</label>
		</div>
		<div class="custom-control custom-checkbox">
			<input type="checkbox" class="custom-control-input" id="save-info">
			<label class="custom-control-label" for="save-info">SNS 수신 동의 ( 선택 )</label>
		</div>
			<hr class="mb-4">			
			<button class="btn btn-primary btn-lg btn-block" type="submit">Join</button>
		</form>

		<footer class="my-4 pt-4 text-muted text-center text-small">
			<p class="mb-1">&copy; 2021.03.30 ~ 2021.04.05</p>
		</footer>
	</div>

  </body>
</html>