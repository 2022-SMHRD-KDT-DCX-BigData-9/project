<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="assets/css/main.css" />
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
		
							<form action="board/write" method ="post" enctype="multipart/form-data">
								<div class="row gtr-uniform">
									<div class="col-12">
										<input type="text" id="title" placeholder="Enter title" name = "title">
									</div>
									<div class="col-12">
										<textarea nid="content" placeholder="Enter Content" rows="6" name = "content"></textarea>
									</div>
									<div class="col-12">
										<input type="text" id="writer" placeholder="Enter writer" name = writer>
									</div>
									<div class="col-12">
										<input type="file"  id="photo" name = "photo"> <!-- 파일을 그대로 보내면 안되기때문에 이름 img로 안함 -->	
										<img id = "preImage" style ="width : 500px; height :400px;" src="https://dummyimage.com/500x500/ffffff/000000.png&text=preview+image">
									</div>
									<!-- Break -->
									<div class="col-12">
										<ul class="actions">
											<li><input type="submit" value="SUBMIT" class="primary" /></li>
											<li><input type="reset" value="Reset" /></li>
										</ul>
									</div>
								</div>
							</form>
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
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script>
		//id가 preImage인 img 태그 요소를 가져오기.
		let preImage = document.getElementById("preImage");
		let photo = document.getElementById("photo");
		
		//photo(input)에 이벤트(파일 선택, 변경)가 발생했을 때 img src속성값 변경
		photo.addEventListener("change", e =>{
			setImage(e.target) // change한 주체인 input태그가 타겟이 됨.
		})
		
		function setImage(input){ // input : 첨부된 파일을 포함한 input 태그요소
			// input태그에 추가된 파일이 있는지 확인.
			if(input.files && input.files[0]){
				console.log(input.files);
				// FileReader 생성
				const reader = new FileReader();
				console.log(reader);
				reader.readAsDataURL(input.files[0]) // -> onload 발생
				reader.onload = e => { 
					// fileReader가 생성이 되었는지 확인
					console.log(e)
					preImage.src = e.target.result;
				}
			}
		}
		
	</script>

</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="assets/css/main.css" />
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
		
							<form action="board/write" method ="post" enctype="multipart/form-data">
								<div class="row gtr-uniform">
									<div class="col-12">
										<input type="text" id="title" placeholder="Enter title" name = "title">
									</div>
									<div class="col-12">
										<textarea nid="content" placeholder="Enter Content" rows="6" name = "content"></textarea>
									</div>
									<div class="col-12">
										<input type="text" id="writer" placeholder="Enter writer" name = writer>
									</div>
									<div class="col-12">
										<input type="file"  id="photo" name = "photo"> <!-- 파일을 그대로 보내면 안되기때문에 이름 img로 안함 -->	
										<img id = "preImage" style ="width : 500px; height :400px;" src="https://dummyimage.com/500x500/ffffff/000000.png&text=preview+image">
									</div>
									<!-- Break -->
									<div class="col-12">
										<ul class="actions">
											<li><input type="submit" value="SUBMIT" class="primary" /></li>
											<li><input type="reset" value="Reset" /></li>
										</ul>
									</div>
								</div>
							</form>
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
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script>
		//id가 preImage인 img 태그 요소를 가져오기.
		let preImage = document.getElementById("preImage");
		let photo = document.getElementById("photo");
		
		//photo(input)에 이벤트(파일 선택, 변경)가 발생했을 때 img src속성값 변경
		photo.addEventListener("change", e =>{
			setImage(e.target) // change한 주체인 input태그가 타겟이 됨.
		})
		
		function setImage(input){ // input : 첨부된 파일을 포함한 input 태그요소
			// input태그에 추가된 파일이 있는지 확인.
			if(input.files && input.files[0]){
				console.log(input.files);
				// FileReader 생성
				const reader = new FileReader();
				console.log(reader);
				reader.readAsDataURL(input.files[0]) // -> onload 발생
				reader.onload = e => { 
					// fileReader가 생성이 되었는지 확인
					console.log(e)
					preImage.src = e.target.result;
				}
			}
		}
		
	</script>

</body>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-DCX-BigData-9/project.git
</html>