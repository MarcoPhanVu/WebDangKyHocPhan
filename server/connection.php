<?php
define("SITEURL", "http://localhost/CourseRegistering/");

session_start();

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

// COMMON VARS
$weekdays = array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
date_default_timezone_set('Asia/Bangkok');
