<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %><!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>Starter Template · Bootstrap v4.6</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/starter-template/">

    

    <!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">



    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/4.6/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/4.6/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/4.6/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.6/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


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
      
		#moreMenu{display:none}
		#moreMenu2{display:none}
		#moreMenu3{display:none}
		#moreMenu4{display:none}
		#moreMenu5{display:none}
      
    </style>

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
	<script>
		$(document).ready(function(){ //DOM이 준비되고
			$('#toggleButton').click(function(){ // ID가 toggleButton인 요소를 클릭하면
				var state = $('#moreMenu').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
				if(state == 'none'){ // state가 none 상태일경우 
					$('#moreMenu').show(); // ID가 moreMenu인 요소를 show();
					document.igg.src = '${pageContext.request.contextPath}/resources/images/up.png';
				}else{
					$('#moreMenu').hide(); // ID가 moreMenu인 요소를 hide();
					document.igg.src = '${pageContext.request.contextPath}/resources/images/down.png';
				}
			});
		});
		$(document).ready(function(){ //DOM이 준비되고
			$('#toggleButton2').click(function(){ // #toggleButton2를 클릭하면
				var state = $('#moreMenu2').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
				if(state == 'none'){ // state가 none 상태일경우 
					$('#moreMenu2').show(); // ID가 moreMenu인 요소를 show();
					document.igg1.src = '${pageContext.request.contextPath}/resources/images/up.png';
				}else{
					$('#moreMenu2').hide(); // ID가 moreMenu인 요소를 hide();
					document.igg1.src = '${pageContext.request.contextPath}/resources/images/down.png';
				}
			});
		});
		$(document).ready(function(){ //DOM이 준비되고
			$('#toggleButton3').click(function(){ // #toggleButton2를 클릭하면
				var state = $('#moreMenu3').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
				if(state == 'none'){ // state가 none 상태일경우 
					$('#moreMenu3').show(); // ID가 moreMenu인 요소를 show();
					document.igg2.src = '${pageContext.request.contextPath}/resources/images/up.png';
				}else{
					$('#moreMenu3').hide(); // ID가 moreMenu인 요소를 hide();
					document.igg2.src = '${pageContext.request.contextPath}/resources/images/down.png';
				}
			});
		});
		$(document).ready(function(){ //DOM이 준비되고
			$('#toggleButton4').click(function(){ // #toggleButton2를 클릭하면
				var state = $('#moreMenu4').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
				if(state == 'none'){ // state가 none 상태일경우 
					$('#moreMenu4').show(); // ID가 moreMenu인 요소를 show();
					document.igg3.src = '${pageContext.request.contextPath}/resources/images/up.png';
				}else{
					$('#moreMenu4').hide(); // ID가 moreMenu인 요소를 hide();
					document.igg3.src = '${pageContext.request.contextPath}/resources/images/down.png';
				}
			});
		});
		$(document).ready(function(){ //DOM이 준비되고
			$('#toggleButton5').click(function(){ // #toggleButton2를 클릭하면
				var state = $('#moreMenu5').css('display'); // state 변수에 ID가 moreMenu인 요소의 display의 속성을 '대입'
				if(state == 'none'){ // state가 none 상태일경우 
					$('#moreMenu5').show(); // ID가 moreMenu인 요소를 show();
					document.igg4.src = '${pageContext.request.contextPath}/resources/images/up.png';
				}else{
					$('#moreMenu5').hide(); // ID가 moreMenu인 요소를 hide();
					document.igg4.src = '${pageContext.request.contextPath}/resources/images/down.png';
				}
			});
		});
	</script>
  </head>
  <body>
    
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <div class="navbar-brand">Navbar</div>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/home">메인화면</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/n">코로나 예방수칙</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/n2">사회적 거리두기</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/n1">코로나 안심병원</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/board/select">공지사항</a>
      </li>
      <li class="nav-item active">
      	<security:authorize access="!isAuthenticated()">
      		<a class="nav-link" href="${pageContext.request.contextPath}/login">로그인</a>
		</security:authorize>
      </li>
      <li class="nav-item active">
      	<security:authorize access="!isAuthenticated()">
      		<a class="nav-link" href="${pageContext.request.contextPath}/join">회원가입</a>
      	</security:authorize>
      </li>
      <li class="nav-item active">
      	<security:authorize access="isAuthenticated()">
			<form action="${pageContext.request.contextPath}/logout" method="post">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="로그아웃" />
			</form>
      	</security:authorize>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<main role="main" class="container">
	<h1>단계별 실행방안</h1>
	<br/>
	<hr/>
	<div id="toggleButton" style="cursor:pointer;">1단계 (생활 속 거리 두기)
		<img name="igg" src="${pageContext.request.contextPath}/resources/images/down.png" align="right" width="25" height="25">
	</div>
	<div id="moreMenu">
		<br/>
		<img src="${pageContext.request.contextPath}/resources/images/1.1.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/1.2.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/1.3.jpg" width="1140px">
	</div>
	<hr/>
	<div id="toggleButton2" style="cursor:pointer;">1.5단계 (지역적 유행 개시)
		<img name="igg1" src="${pageContext.request.contextPath}/resources/images/down.png" align="right" width="25" height="25">
	</div>
	<div id="moreMenu2">
		<br/>
		<img src="${pageContext.request.contextPath}/resources/images/1_5.1.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/1_5.2.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/1_5.3.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/1_5.4.jpg" width="1140px">
	</div>
	<hr/>
	<div id="toggleButton3" style="cursor:pointer;">2단계 (지역 유행 급속 전파, 전국적 확산 개시)
		<img name="igg2" src="${pageContext.request.contextPath}/resources/images/down.png" align="right" width="25" height="25">
	</div>
	<div id="moreMenu3">
		<br/>
		<img src="${pageContext.request.contextPath}/resources/images/2.1.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/2.2.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/2.3.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/2.4.jpg" width="1140px">
	</div>
	<hr/>
	<div id="toggleButton4" style="cursor:pointer;">2.5단계 (전국적 유행 본격화)
		<img name="igg3" src="${pageContext.request.contextPath}/resources/images/down.png" align="right" width="25" height="25">
	</div>
	<div id="moreMenu4">
		<br/>
		<img src="${pageContext.request.contextPath}/resources/images/2_5.1.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/2_5.2.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/2_5.3.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/2_5.4.jpg" width="1140px">
	</div>
	<hr/>
	<div id="toggleButton5" style="cursor:pointer;">3단계 (전국적 대유행)
		<img name="igg4" src="${pageContext.request.contextPath}/resources/images/down.png" align="right" width="25" height="25">
	</div>
	<div id="moreMenu5">
		<br/>
		<img src="${pageContext.request.contextPath}/resources/images/3.1.jpg" width="1140px">
		<img src="${pageContext.request.contextPath}/resources/images/3.2.jpg" width="1140px">
	</div>
	<hr/>

</main><!-- /.container -->

  </body>
</html>
