<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	HttpSession sessionn = request.getSession();
	String loginAdmin = (String) sessionn.getAttribute("loginAdmin");
	
	System.out.print("sessionn" + loginAdmin);
%>

<%
		if (session.getAttribute("loginUser") == null && session.getAttribute("loginAdmin") == null) {
			response.sendRedirect(request.getContextPath() + "/public/login");
			return;
		}
%>

<style>

  h1 {
        font-size: 3em; 
        font-weight: bold;
        color: #fff; 
        background: linear-gradient(135deg, #FF5722, #FF9800); 
        -webkit-background-clip: text; 
        background-clip: text;
        text-align: center; 
        padding: 20px;
        margin: 0; 
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.4);
        transition: transform 0.3s ease-in-out;
    }
    
    h1:hover {
        transform: scale(1.1); 
    }
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


.banner-images {
    display: flex;
    flex-wrap: nowrap; 
    overflow-x: auto;
    gap: 20px; 
    padding: 10px 0; 
    
}

.banner-item:hover{
transform: scale(1.1); 
}

.banner-item {
	color:black;
    flex: 0 0 auto; 
    text-align: center; 
    font-style:oblique; 
}

.banner-item img {
    max-width: 100%; 
    height: auto;
}

</style>


</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp"  %>
		<!-- Features -->
		<section id="features">
			<div class="container">
				<header>
					<h2>
						오늘의 추천 영화! <strong>Best 3</strong>!
					</h2>
				</header>
				<div class="row aln-center">
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
							<c:choose>
								    <c:when test="${not empty list}">
								        <a href="${pageContext.request.contextPath}/MovieOne?movieNum=${list[0].movieNum}" class="image featured">
 											<img src="/Final/img/${list[0].fileName}" width="300px;">
								        </a>
								    </c:when>
								    <c:otherwise>
								        <p></p>
								    </c:otherwise>
							</c:choose>
							<header>
								<h4>실시간 평점&nbsp; ${list[0].avgRating}<span class="cm_icon_star"></span></h4>
								<h3>"어 싱글이야"</h3>
							</header>
							<p>
								2017년 10월 3일에 개봉한 한국 영화. 범죄도시 시리즈 1편. 2004년 서울특별시 구로구 가리봉동의 차이나타운을 배경으로, 
								조선족 범죄조직을 소탕하는 형사들의 이야기를 그렸다...
							</p>
						</section>

					</div>
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
							<c:choose>
								    <c:when test="${not empty list}">
								        <a href="${pageContext.request.contextPath}/MovieOne?movieNum=${list[1].movieNum}" class="image featured">
								           <img src="/Final/img/${list[1].fileName}" width="300px;">
								        </a>
								    </c:when>
								    <c:otherwise>
								        <p></p>
								    </c:otherwise>
								</c:choose>
							<header>
								<h4>실시간 평점&nbsp; ${list[1].avgRating}<span class="cm_icon_star"></span></h4>
								<h3>"누가 5야?"</h3>
							</header>
							<p>
								범죄도시 시리즈의 2편에서는 박병식 역을 맡은 홍기준이 음주운전 혐의로 경찰에 적발로 의해 출연하지 않고
								 오동균 역을 맡은 허동원이 금천서 베테랑 형사였으나 마석도의 오른팔 형사로 투입되고..
							</p>
						</section>

					</div>
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
								<c:choose>
								    <c:when test="${not empty list}">
								        <a href="${pageContext.request.contextPath}/MovieOne?movieNum=${list[2].movieNum}" class="image featured">
								            <img src="/Final/img/${list[2].fileName}" width="300px;">
								        </a>
								    </c:when>
								    <c:otherwise>
								        <p></p>
								    </c:otherwise>
								</c:choose>
						
							<header>
								<h4>실시간 평점&nbsp; ${list[2].avgRating}<span class="cm_icon_star"></span></h4>
								<h3>"어서들어오세요~ 인사해 주변호사야"</h3>
							</header>
							<p>
								베트남 납치 살해범 검거 후 7년 뒤,‘마석도’(마동석)는 새로운 팀원들과 함께 살인사건을 조사한다.
								사건 조사 중, ‘마석도’는 신종 마약 사건이 연루되었음을 알게 되고 수사를 확대한다...
							</p>
						</section>

					</div>
					<div class="col-12">
						<ul class="actions">
							<li><a href="#" class="button icon solid fa-file">Best Movie Top3</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>

		<!-- Banner -->
		<section id="banner">
		    <div class="container">
		      <h1 style="color: black;">이달의 신작을 만나보세요!</h1><br><br><br>
		        <div class="banner-images">      
		            <div class="banner-item">
		                <strong>이달의 신작!</strong><br />
		             	<br />
		                <a href="${pageContext.request.contextPath}/MovieList"><img src="/Final/img/${list[9].fileName}" width="300px;"></a>
		           </div>
		           <div class="banner-item">
		               <strong>이달의 신작!</strong><br />
		               <br />
		               <a href="${pageContext.request.contextPath}/MovieList"><img src="/Final/img/${list[10].fileName}" width="300px;"></a>
		           </div>
		           
		            <div class="banner-item">
		               <strong>이달의 신작!</strong><br />
		               <br />
		               <a href="${pageContext.request.contextPath}/MovieList"><img src="/Final/img/${list[6].fileName}" width="300px;"></a>
		           </div>
		           
		            <div class="banner-item">
		               <strong>이달의 신작!</strong><br />
		               <br />
		               <a href="${pageContext.request.contextPath}/MovieList"><img src="/Final/img/${list[7].fileName}" width="300px;"></a>
		           </div>
		           
		            <div class="banner-item">
		               <strong>이달의 신작!</strong><br />
		               <br />
		               <a href="${pageContext.request.contextPath}/MovieList"><img src="/Final/img/${list[11].fileName}" width="300px;"></a>
		           </div>
		       </div>
		   </div>
		   <br> <br> <br>
		
		<h1  style="color: black;">시사회 일정</h1>
			<div class="container">
				<div class="banner-images">
					<div class="banner-item">
					<br /> 24.07.24<br /> <img
							src="/Final/img/deadful.PNG" width="450px;">
					</div>
					<br><br><br><br>
					<div class="banner-item">
						<br /> 20.04.22<br /> <img
							src="/Final/img/avenger.PNG" width="450px;">
					</div>
		
				</div>
			</div>
				
			<br><br><br><br><br>
		  		<div style="color: red;">※ 현재 영화반납 기한이 지났음에도 불구하고 영화를 반납하지 않는 회원님들이 있습니다.</div> 
		  		<div style="color: red;">자세한 사항은 <a href="${pageContext.request.contextPath}/MovieRule">영화대여규칙</a>을 참고해 주시길 바랍니다. </div>
		</section>
</body>
</html>