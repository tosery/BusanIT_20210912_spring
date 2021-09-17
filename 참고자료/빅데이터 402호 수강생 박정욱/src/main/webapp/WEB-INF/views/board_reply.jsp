<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>board_reply</title>
</head>

<body>
    <form action="${pageContext.request.contextPath}/board/reply?city=${vo.city}" method="post">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <fieldset style="width:450px">
            <h4>답글쓰기</h4>
			<hr />
			<label style="width:80px; display:inline-block">글번호</label> : ${vo.city} <br/>
			
            <label style="width:80px; display:inline-block">내용</label> : 
            <input type="text" name="content" /><br />
            
            <hr />
            <input type="submit" id="button" value="답글쓰기" />
        </fieldset>
    </form>
</body>
</html>