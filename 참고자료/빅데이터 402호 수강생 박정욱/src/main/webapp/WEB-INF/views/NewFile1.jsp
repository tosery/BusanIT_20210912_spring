<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
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
    </style>

    
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet">
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
	
	<h1>국민안심병원 이용</h1>
	<br/>
    <p class="lead">일반 환자의 의료이용을 보장하고 감염 위험을 막기 위해 비호흡기 질환자와 호흡기 질환자를 분리하여 진료하는 ‘국민안심병원’ 을 운영 중입니다.
    <br/>
    <br/>안심병원은 일반환자와 호흡기환자 외래 구역을 구분하여 운영하는 유형(유형 A)과 호흡기 외래와 더불어 검채채취 가능한 선별진료소, 호흡기환자 전용 입원실까지 함께 운영하는 유형(유형 B)이 있습니다.
    <br/>
    <br/>안심병원 외에도, 일반 환자는 의료기관에 방문하지 않아도 전화 상담 · 처방 및 대리 처방을 받을 수 있어 병원 내 감염을 예방할 수 있습니다.
    <br/>
    <br/>고혈압, 심장질환 등 비호흡기 환자분들은 국민안심병원 일반외래를 이용하시고, 단순 경미한 호흡기 증상을 가진 환자분들은 가까운 의원이나 국민안심병원 호흡기 외래를 이용하시기 바랍니다.
    <br/>
    <br/>코로나19 증상이 의심되는 의사환자나 조사대상유증상자는 먼저 관할 보건소 또는 1339 콜센터 등에서 상담을 받으신 후 선별진료소를 방문할 것을 권장합니다.</p>
    
  <div class="starter-template">
	<iframe width="560" height="315" src="https://www.youtube.com/embed/n9oKaI-ChX8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>

</main><!-- /.container -->


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="/docs/4.6/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

      
  </body>
</html>
