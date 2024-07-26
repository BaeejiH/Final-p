<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Details</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	// 영화 상세보기 삭제 경고문구
	function deleteMovieOne() {
		if (confirm("정말로 삭제하시겠습니까?")) {
			$("#MovieOneForm").submit();
		}
	}
	
	// 즐겨찾기 버튼 추가 삭제
	// 즐겨찾기 등록된 상태 : 검정색 하트 
	function Favorite(movieNum) {
		$.ajax({
			url: "${pageContext.request.contextPath}/Favorite",
			type: "POST",
			data: { movieNum: movieNum },
			success: function(response) {
				if(response.status === 'added') {
					alert("즐겨찾기에 추가되었습니다.");
					$("#favoriteButton").addClass("favorited");
				} else {
					alert("즐겨찾기에서 제거되었습니다.");
					$("#favoriteButton").removeClass("favorited");
				}
			},
			error: function() {
				alert("오류가 발생했습니다. 다시 시도해주세요.");
			}
		});
	}
</script>


<style>
	.cm_icon_star {
    display: inline-block;
    width: 1em; 
    height: 1em; 
    background: url('path_to_star_icon.png') no-repeat center center; 
    background-size: contain; 
}


.cm_icon_star::before {
    content: '\2605';
    font-family: 'Font Awesome 5 Free'; 
    font-weight: 900; 
    color: #FF5E00; 
    font-size: 1.5em; 
}


.favorite-button {
    background: none; 
    border: none;
    padding: 0;
    cursor: pointer; 
    font-size: 24px; 
    color: grey;
    line-height: 1;
}
.favorite-button {
    -moz-transition: none; 
    -webkit-transition: none;
    -ms-transition: none; 
    transition: none; 
    -webkit-appearance: none; 
    text-transform: none; 
    font-weight: normal; 
    letter-spacing: normal;
}
</style>

</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>
<div class="header">
	<h1>MovieOne</h1>
</div>



<div class="container">
	<c:set var="m" value="${movieDto}" />
	<!-- c:set 태그를 통해서 movieDto를 m으로 설정 -->
	<div>
		<button id="favoriteButton" class="favorite-button" onclick="Favorite(${m.movieNum})">
		    ${Favorited == 1 ? '❤️' : '🖤'} 
		</button>
	</div>
	
	<div class="main-content">
		<form action="${pageContext.request.contextPath}/MovieOne"
			method="post" id="MovieOneForm">
			<table class="table-section">
			
				<tr>
					<td></td>
					<td><img src="/Final/img/${m.fileName}" width="500px;"></td>
				</tr>
			
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
					<th>bcode</th>
					<td><input type="text" name="bcode" value="${m.bcode}" maxlength="3"></td>
				</tr>

			</table>
			<div class="button-group">
			<!-- 관리자 기능 -->
			<c:if test="${loginAdmin != null }">
			
				<button type="submit" class="btn btn-primary">수정</button>
				<a href="${pageContext.request.contextPath}/removeMovie?movieNum=${m.movieNum}" class="btn btn-danger"
					onclick="deleteMovieOne()"><button>삭제</button></a>
					
			</c:if>			
					<br><br>
				<div>
					<a href="${pageContext.request.contextPath}/review" class="btn btn-secondary">리뷰 보러 가기</a>&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/Actor?movieNum=${m.movieNum}" class="btn btn-secondary">출연 배우정보</a>
				</div>
			</div>
		</form>
	</div>

	<div class="comment-section">
		<h2>댓글</h2>
		<form action="${pageContext.request.contextPath}/comment" method="post" class="comment-form">
			<input type="hidden" name="movieNum" value="${m.movieNum}"> 
			<input type="hidden" name="userId" value="${session.userId }">
			<div>평점 : <span class="cm_icon_star"></span>&nbsp;&nbsp;&nbsp;<input type="number" name="rating" step="0.1" min="0" max="5" placeholder="평점을 입력해주세요(0.0~5.0)" required ></div>
			<br>
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
						<div><span class="cm_icon_star">${c.rating}</span></div>
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
	<p>-</p>
</div>

</body>
</html>