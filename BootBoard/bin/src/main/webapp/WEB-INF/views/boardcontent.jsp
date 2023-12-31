<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Elements - Editorial by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/bigdata/assets/css/main.css" />
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a href="index.html" class="logo"><strong>Editorial</strong> by
						HTML5 UP</a>
				</header>

				<!-- Content -->
				<section>
					<header class="main">
						<h1>게시판 😊😊😊</h1>
					</header>

					<div class="row gtr-200">
						<div class="col-6 col-12-medium" style="width: 100%">
							<table>
								<tr>
									<td>번호</td>
									<td>${board.idx}</td>
								</tr>
								<tr>
									<td>제목</td>
									<td>${board.title}</td>
								</tr>
								<tr>
									<td>내용</td>
									<td>${board.content}</td>
								</tr>
								<tr>
									<td>작성자</td>
									<td>${board.writer}</td>
								</tr>
								<tr>
									<td>작성일</td>
									<td>${board.indate}</td>
								</tr>
								<tr>
									<td>이미지</td>
									<!-- base64로 바꿨음을 알려줘야함 -->
									<td><img style = "width : 500px; height : 400px;"src = "data:image/png;base64,${board.img}"></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<button onclick="location.href='/bigdata'"
											class="btn btn-sm btn-success">리스트</button>
									</td>
								</tr>
							</table>
						</div>

					</div>

				</section>

			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<section class="alt">
					
				</section>

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<ul>
						<li><a href="index.html">Homepage</a></li>
						<li><a href="generic.html">Generic</a></li>
						<li><a href="elements.html">Elements</a></li>
					</ul>
				</nav>



				<!-- Section -->
				<section>
					<header class="major">
						<h2>Get in touch</h2>
					</header>
					<p>Sed varius enim lorem ullamcorper dolore aliquam aenean
						ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin
						sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat
						tempus aliquam.</p>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
						<li class="icon solid fa-phone">(000) 000-0000</li>
						<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
							Nashville, TN 00000-0000
						</li>
					</ul>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						&copy; Untitled. All rights reserved. Demo Images: <a
							href="https://unsplash.com">Unsplash</a>. Design: <a
							href="https://html5up.net">HTML5 UP</a>.
					</p>
				</footer>

			</div>
		</div>

	</div>

	<!-- Scripts -->
	<script src="/bigdata/assets/js/jquery.min.js"></script>
	<script src="/bigdata/assets/js/browser.min.js"></script>
	<script src="/bigdata/assets/js/breakpoints.min.js"></script>
	<script src="/bigdata/assets/js/util.js"></script>
	<script src="/bigdata/assets/js/main.js"></script>
	
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Elements - Editorial by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/bigdata/assets/css/main.css" />
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a href="index.html" class="logo"><strong>Editorial</strong> by
						HTML5 UP</a>
				</header>

				<!-- Content -->
				<section>
					<header class="main">
						<h1>게시판 😊😊😊</h1>
					</header>

					<div class="row gtr-200">
						<div class="col-6 col-12-medium" style="width: 100%">
							<table>
								<tr>
									<td>번호</td>
									<td>${board.idx}</td>
								</tr>
								<tr>
									<td>제목</td>
									<td>${board.title}</td>
								</tr>
								<tr>
									<td>내용</td>
									<td>${board.content}</td>
								</tr>
								<tr>
									<td>작성자</td>
									<td>${board.writer}</td>
								</tr>
								<tr>
									<td>작성일</td>
									<td>${board.indate}</td>
								</tr>
								<tr>
									<td>이미지</td>
									<!-- base64로 바꿨음을 알려줘야함 -->
									<td><img style = "width : 500px; height : 400px;"src = "data:image/png;base64,${board.img}"></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<button onclick="location.href='/bigdata'"
											class="btn btn-sm btn-success">리스트</button>
									</td>
								</tr>
							</table>
						</div>

					</div>

				</section>

			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Search -->
				<section class="alt">
					
				</section>

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<ul>
						<li><a href="index.html">Homepage</a></li>
						<li><a href="generic.html">Generic</a></li>
						<li><a href="elements.html">Elements</a></li>
					</ul>
				</nav>



				<!-- Section -->
				<section>
					<header class="major">
						<h2>Get in touch</h2>
					</header>
					<p>Sed varius enim lorem ullamcorper dolore aliquam aenean
						ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin
						sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat
						tempus aliquam.</p>
					<ul class="contact">
						<li class="icon solid fa-envelope"><a href="#">information@untitled.tld</a></li>
						<li class="icon solid fa-phone">(000) 000-0000</li>
						<li class="icon solid fa-home">1234 Somewhere Road #8254<br />
							Nashville, TN 00000-0000
						</li>
					</ul>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">
						&copy; Untitled. All rights reserved. Demo Images: <a
							href="https://unsplash.com">Unsplash</a>. Design: <a
							href="https://html5up.net">HTML5 UP</a>.
					</p>
				</footer>

			</div>
		</div>

	</div>

	<!-- Scripts -->
	<script src="/bigdata/assets/js/jquery.min.js"></script>
	<script src="/bigdata/assets/js/browser.min.js"></script>
	<script src="/bigdata/assets/js/breakpoints.min.js"></script>
	<script src="/bigdata/assets/js/util.js"></script>
	<script src="/bigdata/assets/js/main.js"></script>
	
</body>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-DCX-BigData-9/project.git
</html>