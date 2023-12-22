<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Trang chủ</title>
	<link rel="stylesheet" href="./styles/main.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
	<?php include "./server/connection.php"?>
	<a href="./pages/learning.php">TO LEARNING</a>
	<?php
	session_start();
	?>
	<header class="row">
		<div class="home-link">
			<a href="./index.php"class="mb-0 fs-3 notYet">
				Trang chủ
			</a>
		</div>
		<div class="banner-container">
			<a href="./index.php">
				<img src="./assets/HCMUEBanner.jpg" alt="HCMUE Banner nha">
			</a>
		</div>
		<div class="auth-action">
			<p class="user-id notYet">47.01.104.045</p>
			<p class="user-name notYet">Phan Vũ Tứn Em</p>
			<!-- <p class="log-in">Đăng nhập</p>
			<p class="sign-in">Đăng ký</p>
			<p class="log-out">Đăng xuất</p> -->
		</div>
	</header>
	<div id="main-container">
		<div class="side-bar mx-25 col-md-2">
			<h3 class="title">Chức năng</h3>
			<button class="btn-option" data-target="registering-course">Đăng ký học phần</button>
			<button class="btn-option" data-target="schedule">Thời khoá biểu</button>
			<button class="btn-option" data-target="course-info">Thông tin học phần</button>
			<button class="btn-option" data-target="similar-course">Học phần tương đương</button>
			<button class="btn-option" data-target="history">Lịch sử đăng ký</button>
		</div>
		
		<div class="container display-section col-md-10">
			<?php include "./pages/registering-course.php" ?>
			<?php include "./pages/schedule.php" ?>
			<?php include "./pages/course-info.php" ?>
			<?php include "./pages/similar-course.php" ?>
			<?php include "./pages/history.php" ?>
		</div>
	</div>
	<footer></footer>

	<script src="./scripts/script.js"></script>
</body>
</html>