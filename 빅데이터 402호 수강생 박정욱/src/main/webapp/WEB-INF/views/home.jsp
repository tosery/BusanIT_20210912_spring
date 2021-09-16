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
    <title>Covid-19</title>

    <!-- Bootstrap core CSS -->
<link href="/docs/4.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

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
    <link href="${pageContext.request.contextPath}/resources/css/join.css" rel="stylesheet">
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

<main role="main">

  <!-- Main jumbotron for a primary marketing message or call to action -->
  <div class="jumbotron">
    <div class="container">
      <h3 class="display-3">We're All Heroes!</h3>
      <h4># 지금 우리는</h4>
      <h4># 힘내라 대한민국</h4>
      <h4># 우리는 할 수 있습니다</h4>
      <h4># 코로나19 물렀거라!</h4><br/>
      
      <security:authorize access="isAuthenticated()">
      <h5><security:authentication property="principal.city"/>의 <security:authentication property="name"/> 님 환영합니다! </h5>
      </security:authorize>
      <p><a class="btn btn-primary btn-lg" href="http://ncov.mohw.go.kr/" role="button">Official homepage &raquo;</a></p>
    </div>
  </div>

  <div class="container">
    <!-- Example row of columns -->
    <div class="row">
      <div class="col-md-4">
        <h2>코로나 현황표</h2>
        <img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/images/tablechart.png" width="350px" height="250px">
        <p><a class="btn btn-secondary" href="${pageContext.request.contextPath}/n5" role="button">View details &raquo;</a></p>
      </div>
      <div class="col-md-4">
        <h2>전국 코로나 현황</h2>
        <img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/images/map.png" width="350px" height="250px">
        <p><a class="btn btn-secondary" href="${pageContext.request.contextPath}/n3" role="button">View details &raquo;</a></p>
      </div>
      <div class="col-md-4">
        <h2>코로나 동향 그래프</h2>
        <img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/images/dashboard.png" width="350px" height="250px">
        <p><a class="btn btn-secondary" href="${pageContext.request.contextPath}/n4" role="button">View details &raquo;</a></p>
      </div>
    </div>

    <hr>

  </div> <!-- /container -->

</main>

<footer class="container">
  <p>&copy; Project 2021.03.30 - 2021.04.12</p>
</footer>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script>window.jQuery || document.write('<script src="/docs/4.6/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

      
  </body>
</html>
