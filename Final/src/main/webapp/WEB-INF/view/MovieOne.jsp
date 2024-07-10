<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script type="text/javascript">
	function deleteMovieOne() {
		if (confirm("정말로 삭제하시겠습니까?")) {
			$("#MovieOneForm").submit();
		}
	}
</script>

<style>
body {
	font-family: Arial, sans-serif;
	line-height: 1.6;
}

.comment-section {
	margin-top: 20px;
}

.comment {
	border: 1px solid #ccc;
	padding: 10px;
	margin-bottom: 10px;
	background-color: #f9f9f9;
}

.comment .user {
	font-weight: bold;
	color: #333;
}

.comment .comment-text {
	margin-top: 5px;
	color: #666;
}
</style>
</head>
<body>
	<h1>MovieOne</h1>


	<c:set var="m" value="${movieDto}" />
	<!-- c:set 태그를 통해서 movieDto를 m으로 설정 -->

	<form action="${pageContext.request.contextPath}/MovieOne"
		method="post" id="MovieOneForm">
		<table border="1">
			<tr>
				<td>movieNum</td>
				<td><input type="hidden" name="movieNum" value="${m.movieNum}">${m.movieNum}</td>
			</tr>

			<tr>
				<td>genre</td>
				<td><input type="text" name="genre" value="${m.genre}"></td>
			</tr>

			<tr>
				<td>title</td>
				<td><input type="text" name="title" value="${m.title}"
					maxlength="30"></td>
			</tr>

			<tr>
				<td>director</td>
				<td><input type="text" name="director" value="${m.director}"
					maxlength="30"></td>
			</tr>

			<tr>
				<td>producer</td>
				<td><input type="text" name="producer" value="${m.producer}"
					maxlength="30"></td>
			</tr>

			<tr>
				<td>releaseDate</td>
				<td><input type="date" name="releaseDate"
					value="${m.releaseDate}"></td>
			</tr>

			<tr>
				<td>runtime</td>
				<td><input type="number" name="runtime" value="${m.runtime}"
					maxlength="5"></td>
			</tr>

			<tr>
				<td>description</td>
				<td><input type="text" name="description"
					value="${m.description}" maxlength="30"></td>
			</tr>

			<tr>
				<td>image</td>
				<td><input type="text" name="image" value="${m.image}"></td>
			</tr>

			<tr>
				<td>bcode</td>
				<td><input type="text" name="bcode" value="${m.bcode}"
					maxlength="3"></td>
			</tr>

		</table>
		<div>
			<button type="submit">수정</button>
			<a
				href="${pageContext.request.contextPath}/removeMovie?movieNum=${m.movieNum}">
				<button type="button" onclick="deleteMovieOne()">삭제</button>
			</a> <a href="${pageContext.request.contextPath}/review">리뷰 보러 가기</a>
		</div>
	</form>

	<br>
	<hr>
	<form action="${pageContext.request.contextPath}/comment" method="post">
		<input type="hidden" name="movieNum" value="${m.movieNum}"> <input
			type="hidden" name="userId" value="${session.userId }">

		<div>
			<textarea rows="5" cols="50" name="commentText"></textarea>
			<button type="submit">댓글 등록</button>
		</div>

	</form>

	<div class="comment-section">

		<c:choose>
			<c:when test="${empty commentList}">
				<tr>
					<td colspan="2">댓글이 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="c" items="${commentList}">

					<div class="comment">
						<span class="user">${c.userId}</span> : <span class="comment-text">${c.commentText}</span>
						
						
						 <c:if test="${c.userId eq sessionScope.loginUser}">
                            <form action="${pageContext.request.contextPath}/removeComment" method="post">
                                <input type="hidden" name="commentNo" value="${c.commentNo}">
                                <input type="hidden" name="movieNum" value="${m.movieNum}">
                              
                                <button type="submit">삭제</button>
                            </form>
                        </c:if>
						
						
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>

	</div>
	
		
	
		


</body>
</html>