<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../styles/login.css">
	<title>Trang chủ</title>
</head>

<body>
	<?php include "../server/connection.php" ?>
	<div class="form-container">
		<h1 class="title">Login</h1>
		<form class="auth-form" action="" method="GET">
			<div class="role-select">
				<label for="student">
					<input type="radio" name="role-select" id="student" value="student" checked>
					Student
				</label>
				<label for="lecturer">
					<input type="radio" name="role-select" id="lecturer" value="lecturer">
					Lecturer
				</label>
			</div>
			<?php
			if (isset($_GET["username"]) && $_GET["username"] == "") {
				echo "<p class='warning'>Field cannot be empty</p>";
			}

			if (isset($_SESSION["wrong-user"]) && $_SESSION["wrong-user"] == true) {
				echo "<p class='warning'>Nonexisted user</p>";
			}

			unset($_SESSION["wrong-user"]);
			?>
			<label for="username-input">Username:
				<input type="text" id="username-input" name="username" minlength="1">
			</label>
			<?php
			if (isset($_GET["password"]) && $_GET["password"] == "") {
				echo "<p class='warning'>Field cannot be empty</p>";
			}

			if (isset($_SESSION["wrong-pass"]) && $_SESSION["wrong-pass"] == true) {
				echo "<p class='warning'>Incorrect password</p>";
			}

			unset($_SESSION["wrong-pass"]);
			?>
			<label for="password-input">Password:
				<input type="password" id="password-input" name="password" minlength="1">
			</label>
			<input type="submit" name="login" value="Login" class="submit-btn">
		</form>
	</div>
	<?php
	if (
		isset($_GET["role-select"]) &&
		isset($_GET["username"]) &&
		isset($_GET["password"]) &&
		$_GET["username"] != "" &&
		$_GET["password"] != ""
	) {
		$role = $_GET["role-select"];
		$query = "SELECT * FROM $role WHERE id=" . $_GET["username"];
		$result = DataProvider::get_instance()->execute_query($query);
		$data = $result->fetch();

		echo "<br>role: " . $_GET["role-select"];
		if ($_GET["username"] == $_GET["password"] && $_GET["username"] == $data[0]) {
			header('Location: ../index.php');
			$_SESSION["username"] = $data[1] . " " . $data[2];
			$_SESSION["user-type"] = $_GET["role-select"];
		} else if ($_GET["username"] != $data[0]) {
			$_SESSION["wrong-user"] = true;
		} else if ($_GET["username"] != $_GET["password"]) {
			$_SESSION["wrong-pass"] = true;
		}
	}
	?>
</body>

</html>