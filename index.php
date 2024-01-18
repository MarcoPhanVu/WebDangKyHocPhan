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
	<?php include realpath(__DIR__ . "/server/connection.php"); ?>
	<header class="row">
		<div class="home-link">
			<img src="https://cdn.haitrieu.com/wp-content/uploads/2022/02/Logo-DH-Su-Pham-TPHCM-HCMUE.png" alt="HCMUE Banner nha" style="height: 80px;">
			<a href="./index.php" class="mb-0 fs-3 notYet">
				Trang chủ
			</a>
		</div>
		<div class="banner-container">
			<a href="./index.php">
				<img src="https://hcmue.edu.vn/images/Logo_Banner_SP/Logo-HCMUE---ENG-2.png" alt="HCMUE Banner nha" style="height: 100px;">
			</a>
		</div>
		<div class="auth-action">
			<?php
			if (!isset($_SESSION["user-type"])) {
				header('Location: ./pages/login.php');
			}
			echo "<p class='user-id'>" . $_SESSION["user-type"] . "</p>";
			echo "<p class='user-name'>" . $_SESSION["username"] . "</p>";
			?>
		</div>
	</header>

	<div id="main-container">
		<div class="side-bar mx-25 col-md-2">
			<h3 class="title">Chức năng</h3>
			<button class="btn-option" data-target="registering-course">Đăng ký học phần</button>
			<!-- <button class="btn-option" data-target="schedule">Thời khoá biểu</button> -->
			<button class="btn-option" data-target="course-info">Thông tin học phần</button>
			<!-- <button class="btn-option" data-target="similar-course">Học phần tương đương</button> -->
			<!-- <button class="btn-option" data-target="history">Lịch sử đăng ký</button> -->
		</div>

		<div class="display-section col-md-10">
			<?php
			include realpath(__DIR__ . "/pages/registering-course.php");
			// include realpath(__DIR__ . "/pages/schedule.php");
			include realpath(__DIR__ . "/pages/course-info.php");
			// include realpath(__DIR__ . "/pages/similar-course.php");
			// include realpath(__DIR__ . "/pages/history.php");
			?>
		</div>
	</div>

	<footer></footer>
	<script src="./scripts/script.js"></script>
</body>

</html>