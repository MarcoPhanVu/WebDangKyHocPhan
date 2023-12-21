<?php
	define("DB_HOST", "localhost");
	define("DB_USER", "root");
	define("DB_PASS", "");
	define("DB_NAME", "user_course_registration");
	define("DB_PORT", "3306");

	define("SITEURL", "http://localhost/dkhp/");

	$connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME, DB_PORT);

	// Check connection
	if ($connection -> connect_error) {
		die("[Connection failed]: " . $connection->connect_error);
	} else {
		// echo "Connection established";
	}
?>