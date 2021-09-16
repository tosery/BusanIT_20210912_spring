<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>board_content</title>
</head>

<body>
        <fieldset style="width:450px">
            <h3>상세내용</h3>
			<hr />
            <label style="width:80px; display:inline-block">글번호</label> : ${vo.city} <br/>
			<label style="width:80px; display:inline-block">제목</label> : ${vo.title} <br/>
			<label style="width:80px; display:inline-block">내용</label> : ${vo.content} <br/>
			<label style="width:80px; display:inline-block">날짜</label> : ${vo.date} <br/>
			<label style="width:80px; display:inline-block">이미지</label>
			<c:if test="${vo.base64 ne null}">
			<img src="data:image/png;base64,${vo.base64}" width="auto" height="auto" />
			</c:if> <c:if test="${vo.base64 eq null}">NO이미지</c:if>
            <hr />
            <div>
				<table class="table">
					<c:forEach var="vo" items="${list}">
						<tr>
							<th>댓글</th>
							<td>${vo.content} </td>
						</tr>
					</c:forEach>		
				</table>
			</div>
            <hr />
            <button type="button" onclick="move_board_select();">글목록</button>
            <!-- <input type="submit" id="button" value="답글쓰기" /> -->
            <button type="button" onclick="move_board_reply();">답글쓰기</button>
        </fieldset>
    
    <script type="text/javaScript">
		function move_board_select(){
     		location.href = "${pageContext.request.contextPath}/board/select";
		}
		function move_board_reply(){
     		location.href = "${pageContext.request.contextPath}/board/reply?city=${vo.city}";
		}
	</script>
    
</body>
</html>