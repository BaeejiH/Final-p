<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
		HttpSession sessionn = request.getSession();
		String loginAdmin = (String) sessionn.getAttribute("loginAdmin");
		
		System.out.print("sessionn"+loginAdmin);
%>



</head>
<body>
<%@include file = "/WEB-INF/view/CSS/Header.jsp" %>
		<!-- Features -->
		<section id="features">
			<div class="container">
				<header>
					<h2>
						Gentlemen, behold! This is <strong>Strongly Typed</strong>!
					</h2>
				</header>
				<div class="row aln-center">
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
							<a href="#" class="image featured"><img
								src="images/pic01.jpg" alt="" /></a>
							<header>
								<h3>Okay, so what is this?</h3>
							</header>
							<p>
								This is <strong>Strongly Typed</strong>, a free, fully
								responsive site template by <a href="http://html5up.net">HTML5
									UP</a>. Free for personal and commercial use under the <a
									href="http://html5up.net/license">CCA 3.0 license</a>.
							</p>
						</section>

					</div>
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
							<a href="#" class="image featured"><img
								src="images/pic02.jpg" alt="" /></a>
							<header>
								<h3>Nice! What is HTML5 UP?</h3>
							</header>
							<p>
								<a href="http://html5up.net">HTML5 UP</a> is a side project of <a
									href="http://twitter.com/ajlkn">AJ’s</a> (= me). I started it
								as a way to both test my responsive tools and sharpen up my
								coding and design skills a bit.
							</p>
						</section>

					</div>
					<div class="col-4 col-6-medium col-12-small">

						<!-- Feature -->
						<section>
							<a href="#" class="image featured"><img
								src="images/pic03.jpg" alt="" /></a>
							<header>
								<h3>What's this built with?</h3>
							</header>
							<p>
								<strong>Responsive Tools</strong> is a simple set of tools for
								building responsive sites and apps. All of my templates at <a
									href="http://html5up.net">HTML5 UP</a> are built using these
								tools.
							</p>
						</section>

					</div>
					<div class="col-12">
						<ul class="actions">
							<li><a href="#" class="button icon solid fa-file">Tell
									Me More</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>

		<!-- Banner -->
		<section id="banner">
			<div class="container">
				<p>
					Use this space for <strong>profound thoughts</strong>.<br /> Or an
					enormous ad. Whatever.
				</p>
			</div>
		</section>
</body>
</html>