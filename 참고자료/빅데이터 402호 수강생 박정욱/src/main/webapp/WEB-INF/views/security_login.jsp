<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>

<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet" />

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

    <meta charset="UTF-8">
    <title>security_login.jsp</title>
    
</head>

<body>
	
    <form action="${pageContext.request.contextPath}/loginProcess" method="post" class="form-signin">
    	<img class="mb-4" src="${pageContext.request.contextPath}/resources/images/virusicon.jpg" width="400" height="300">
    	<div class="text-center mb-4">
    	<h1 class="h3 mb-3 font-weight-normal">COVID-19</h1>
    	<p><code>코로나바이러스감염증-19</code></p>
  		</div>
    
    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <fieldset style="width:400px">
			
			<div class="form-label-group">
				<input type="text" name="username" class="form-control" placeholder="ID" required autofocus>
				<label for="inputEmail">ID</label>
			</div>
			
			<div class="form-label-group">
				<input type="password" name="password" class="form-control" placeholder="Password" required>
				<label for="inputPassword">Password</label>
			</div>
			            
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  			<p class="mt-5 mb-3 text-muted text-center">&copy; 2021.03.30 ~ 2021.04.05</p>
        </fieldset>
    </form>
</body>
</html>