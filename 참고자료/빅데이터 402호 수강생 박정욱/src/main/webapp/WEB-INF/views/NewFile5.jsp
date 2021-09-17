<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>Dashboard Template · Bootstrap v4.6</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/dashboard/">

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
    <link href="${pageContext.request.contextPath}/resources/css/dashboard.css" rel="stylesheet">
  </head>
  <body>
    
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <div class="navbar-brand col-md-3 col-lg-2 mr-0 px-3">Covid-19 Tendency Table</div>
</nav>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="sidebar-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" href="${pageContext.request.contextPath}/home">
              <span data-feather="home"></span>
              메인화면
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/n">
              <span data-feather="thermometer"></span>
              코로나 예방수칙
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/n2">
              <span data-feather="user-check"></span>
              사회적 거리두기
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/n1">
              <span data-feather="youtube"></span>
              코로나 안심병원
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/board/select">
              <span data-feather="clipboard"></span>
              공지사항
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">주간 환자 현황</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
          </div>
          <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
            <span data-feather="calendar"></span>
            This week
          </button>
        </div>
      </div>


      <div class="table-responsive">
        <table class="table table-striped table">
          <thead>
            <tr>
              <th>날짜</th>
              <th>확진자 수</th>
              <th>격리해제 수</th>
              <th>치료중 수</th>
              <th>검사진행중 수</th>
              <th>사망자 수</th>
            </tr>
          </thead>
          <tbody>
            <c:if test="${!empty list}">
                <c:forEach var="vo" items="${list}">
                	<tr>
                		<td>${vo.date}</td>
                		<td>${vo.cnt}</td>
                		<td>${vo.cle}</td>
                		<td>${vo.car}</td>
                		<td>${vo.exa}</td>
                		<td>${vo.dea}</td>
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
      </div>
    </main>
  </div>
</div>

		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"><\/script>')</script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
		<script src="${pageContext.request.contextPath}/resources/js/feather.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/Chart.min.js"></script>
		<script>
		/* globals Chart:false, feather:false */
		(function() {
		'use strict'

		feather.replace()

		  })()

  </script>
  </body>
</html>
