\<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Details</title>

<script type="text/javascript">
	function deleteMovieOne() {
		if (confirm("정말로 삭제하시겠습니까?")) {
			$("#MovieOneForm").submit();
		}
	}
</script>

</head>
<body>
<%@include file = "/WEB-INF/view/CSS/header.jsp"  %>

<div class="header">
	<h1>MovieOne</h1>
</div>

<div class="container">
	<c:set var="m" value="${movieDto}" />
	<!-- c:set 태그를 통해서 movieDto를 m으로 설정 -->

	<div class="main-content">
		<form action="${pageContext.request.contextPath}/MovieOne"
			method="post" id="MovieOneForm">
			<table class="table-section">
				<tr>
					<th>movieNum</th>
					<td><input type="hidden" name="movieNum" value="${m.movieNum}">${m.movieNum}</td>
				</tr>

				<tr>
					<th>genre</th>
					<td><input type="text" name="genre" value="${m.genre}"></td>
				</tr>

				<tr>
					<th>title</th>
					<td><input type="text" name="title" value="${m.title}"
						maxlength="30"></td>
				</tr>

				<tr>
					<th>director</th>
					<td><input type="text" name="director" value="${m.director}"
						maxlength="30"></td>
				</tr>

				<tr>
					<th>producer</th>
					<td><input type="text" name="producer" value="${m.producer}"
						maxlength="30"></td>
				</tr>

				<tr>
					<th>releaseDate</th>
					<td><input type="date" name="releaseDate"
						value="${m.releaseDate}"></td>
				</tr>

				<tr>
					<th>runtime</th>
					<td><input type="number" name="runtime" value="${m.runtime}"
						maxlength="5"></td>
				</tr>

				<tr>
					<th>description</th>
					<td><input type="text" name="description"
						value="${m.description}" maxlength="30"></td>
				</tr>

				<tr>
					<th>image</th>
					<td><input type="text" name="image" value="${m.image}"></td>
				</tr>

				<tr>
					<th>bcode</th>
					<td><input type="text" name="bcode" value="${m.bcode}"
						maxlength="3"></td>
				</tr>

			</table>
			<div class="button-group">
				<button type="submit" class="btn btn-primary">수정</button>
				<a href="${pageContext.request.contextPath}/removeMovie?movieNum=${m.movieNum}" class="btn btn-danger"
					onclick="deleteMovieOne()">삭제</a>
				<a href="${pageContext.request.contextPath}/review" class="btn btn-secondary">리뷰 보러 가기</a>
			</div>
		</form>
	</div>

	<div class="comment-section">
		<h2>댓글</h2>
		<form action="${pageContext.request.contextPath}/comment" method="post" class="comment-form">
			<input type="hidden" name="movieNum" value="${m.movieNum}"> 
			<input type="hidden" name="userId" value="${session.userId }">
			<textarea rows="5" cols="50" name="commentText"></textarea>
			<button type="submit" class="btn btn-warning">댓글 등록</button>
		</form>

		<c:choose>
			<c:when test="${empty commentList}">
				<p>댓글이 없습니다.</p>
			</c:when>
			<c:otherwise>
				<c:forEach var="c" items="${commentList}">
					<div class="comment">
						<span class="user">${c.userId}</span> : <span class="comment-text">${c.commentText}</span>
						<c:if test="${c.userId eq sessionScope.loginUser}">
							<form action="${pageContext.request.contextPath}/removeComment" method="post" style="display:inline;">
								<input type="hidden" name="commentNo" value="${c.commentNo}">
								<input type="hidden" name="movieNum" value="${c.movieNum}">
								<button type="submit" class="btn btn-danger btn-sm">삭제</button>
							</form>
						</c:if>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
</div>

<div class="footer">
	<p>MovieOne</p>
</div>

</body>
</html>