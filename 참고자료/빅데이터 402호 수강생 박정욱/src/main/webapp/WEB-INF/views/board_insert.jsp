<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>board_insert</title>
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
    
</head>

<!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    
	<div class="container">
	<div class="py-5 text-center">
		<img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/resources/images/gonggi_top.jpg" alt="" width="1100" height="200">
	</div>

    <form class="needs-validation" novalidate action="${pageContext.request.contextPath}/board/insert" method="post" enctype="multipart/form-data">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<div class="row">
		<div class="col-md-12 mb-3">
        <fieldset style="width:100px">
			<label for="country">시도별</label>
            <select class="custom-select d-block w-100" name="city">
				<option value="서울">서울</option>
				<option value="부산">부산</option>
				<option value="대구">대구</option>
				<option value="인천">인천</option>
				<option value="광주">광주</option>
				<option value="대전">대전</option>
				<option value="울산">울산</option>
				<option value="세종">세종</option>
				<option value="경기">경기</option>
				<option value="강원">강원</option>
				<option value="충북">충북</option>
				<option value="충남">충남</option>
				<option value="전북">전북</option>
				<option value="전남">전남</option>
				<option value="경북">경북</option>
				<option value="경남">경남</option>
				<option value="제주">제주</option>
            </select>
            </fieldset>
			<br/>
            <label style="width:40px; display:inline-block">제목</label>:
            <input type="text" name="title" style="width:1000px"/><br />
            
            <label style="width:40px; display:inline-block">내용</label>:
            <textarea name="content" rows="10" style="width:1000px"></textarea><br />
            
            <label style="width:55px; display:inline-block">이미지</label>:
            <input type="file" name="img1" />
            
            <hr />
            <input type="submit" id="button" value="글등록" />
        </div>
        </div>
    </form>
    </div>
</body>

<footer class="my-4 pt-4 text-muted text-center text-small">
	<p class="mb-1">&copy; 2021.03.30 ~ 2021.04.12</p>
</footer>

</html>