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
    <title>Jumbotron Template · Bootstrap v4.6</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/jumbotron/">

    

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

  <div class="container" style="margin-top:100px">
	<table class="table" style="border:1px solid #cccccc">
        <thead>
            <tr>
                <th>시도별</th>
                <th>제목</th>
                <th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	</th>
                <th>날짜</th>
                
            </tr>
        </thead>
        
        <tbody>
            <c:if test="${!empty list}">
                <c:forEach var="vo" items="${list}">
                <tr>
                	<td>${vo.city}</td>
                    <td><a href="${pageContext.request.contextPath}/board/content?city=${vo.city}">${vo.title}</a></td>
                    <td></td>
                    <td>${vo.date}</td>
                    
                </tr>
                </c:forEach>
            </c:if>
            <c:if test="${empty list}">
                <tr>
                    <td colspan="5">자료가 없습니다.</td>
                </tr>
            </c:if>
        </tbody>
    </table>
    <div style="display: flex; justify-content: flex-end;">
    <security:authorize access="hasAuthority('3LEVEL')">
    <form action="${pageContext.request.contextPath}/board/insert" method="get">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="글작성" />
	</form>
	</security:authorize>
	</div>
	<div style="display: flex; justify-content: center;" id="pagination-div"></div>
  </div> <!-- /container -->
  <footer class="container">
  <p>&copy; Company 2017-2021</p>
</footer>
  
    

	<!-- jquery cdn -->		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<!-- twbspagination cdn -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
	
	<script>
		$(function(){
		    $('#pagination-div').twbsPagination({
			    totalPages: Number('${totPages}'),
			    visiblePages: 10,
	            startPage : Number('${param.page}'),
	            initiateStartPageClick :false,
	            onPageClick: function (event, page) {
	                window.location.href = "${pageContext.request.contextPath}/board/select?txt="+'${param.txt}'+ "&page="+page;
	            }
			});	
		});
	</script>	

  </body>
</html>
