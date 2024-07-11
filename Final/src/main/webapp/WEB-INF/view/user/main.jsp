<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	HttpSession sessionn = request.getSession();
	String loginUser = (String) sessionn.getAttribute("loginUser");
	
	System.out.print("sessionn" + loginUser);
%>


</head>
<body>
<%@include file = "/WEB-INF/view/CSS/MainHeader.jsp"  %>
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

		<!-- Main -->

		<!-- Footer -->
		<section id="footer">
			<div class="container">
				<header>
					<h2>
						Questions or comments? <strong>Get in touch:</strong>
					</h2>
				</header>
				<div class="row">
					<div class="col-6 col-12-medium">
						<section>
							<form method="post" action="#">
								<div class="row gtr-50">
									<div class="col-6 col-12-small">
										<input name="name" placeholder="Name" type="text" />
									</div>
									<div class="col-6 col-12-small">
										<input name="email" placeholder="Email" type="text" />
									</div>
									<div class="col-12">
										<textarea name="message" placeholder="Message"></textarea>
									</div>
									<div class="col-12">
										<a href="#"
											class="form-button-submit button icon solid fa-envelope">Send
											Message</a>
									</div>
								</div>
							</form>
						</section>
					</div>
					<div class="col-6 col-12-medium">
						<section>
							<p>Erat lorem ipsum veroeros consequat magna tempus lorem
								ipsum consequat Phaselamet mollis tortor congue. Sed quis mauris
								sit amet magna accumsan tristique. Curabitur leo nibh, rutrum eu
								malesuada.</p>
							<div class="row">
								<div class="col-6 col-12-small">
									<ul class="icons">
										<li class="icon solid fa-home">1234 Somewhere Road<br />
											Nashville, TN 00000<br /> USA
										</li>
										<li class="icon solid fa-phone">(000) 000-0000</li>
										<li class="icon solid fa-envelope"><a href="#">info@untitled.tld</a>
										</li>
									</ul>
								</div>
								<div class="col-6 col-12-small">
									<ul class="icons">
										<li class="icon brands fa-twitter"><a href="#">@untitled</a>
										</li>
										<li class="icon brands fa-instagram"><a href="#">instagram.com/untitled</a>
										</li>
										<li class="icon brands fa-dribbble"><a href="#">dribbble.com/untitled</a>
										</li>
										<li class="icon brands fa-facebook-f"><a href="#">facebook.com/untitled</a>
										</li>
									</ul>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
			<div id="copyright" class="container">
				<ul class="links">
					<li>&copy; Untitled. All rights reserved.</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>
		</section>

	</div>



</body>
</html>