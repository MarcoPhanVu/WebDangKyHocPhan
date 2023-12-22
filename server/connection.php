<?php
	define("DB_HOST", "localhost");
	define("DB_USER", "root");
	define("DB_PASS", "");
	define("DB_NAME", "user_course_registration");
	define("DB_PORT", "3306");

	define("SITEURL", "http://localhost/dkhp/");

// $connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME, DB_PORT);

// // Check connection
// if ($connection -> connect_error) {
// 	die("[Connection failed]: " . $connection->connect_error);
// } else {
// 	// echo "Connection established";
// }

class DataProvider {
	private const DATABASE_HOST = "localhost";
	private const DATABASE_NAME = "user_course_registration";
	private const DATABASE_USERNAME = "root";
	private const DATABASE_PASSWORD = "";
	private const DATABASE_PORT = "3306";

	private const CONNECTION_STRING = "mysql:host=" . self::DATABASE_HOST . "; dbname=" . self::DATABASE_NAME . ";";

	private static DataProvider $instance;
	public static function get_instance(): DataProvider {
		return self::$instance ?? (self::$instance = new DataProvider);
	}

	public function get_connection(): PDO {
		return new PDO(
			self::CONNECTION_STRING,
			self::DATABASE_USERNAME,
			self::DATABASE_PASSWORD
		);
	}

	function close_connection(PDO $connection): void {
		if ($connection != null) {
			$connection = null;
		}
	}
	public function execute_query(string $query): PDOStatement|false {
		try {
			$connection = $this->get_connection();
			$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		} catch (PDOException $e) {
			echo "Error: " . $e->getMessage();
		}

		$result = $connection->query($query);
		$this->close_connection($connection);

		return $result;
	}
}
