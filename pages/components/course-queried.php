<?php
        // Get all courses

    echo "is connected<br>";
    echo "is connected<br>";
    echo "is connected<br>";
    echo "is connected<br>";
    echo "is connected<br>";
    echo "is connected<br>";
    echo "is connected<br>";

    if (isset($_POST[$ajaxed])) {
        echo "AJAXED<br>";
    }

    $course_all_query = "SELECT * FROM course";
    $course_all_query_result = mysqli_query($connection, $course_all_query);
    $course_list = mysqli_fetch_all($course_all_query_result, MYSQLI_ASSOC);

    foreach ($course_list as $course) {
        $courseID = $course["courseID"];
        $courseGroup = substr($courseID, 0, strlen($courseID) - 2);
        $courseName = $course["courseName"];
        $courseType = $course["courseType"];
        $creditCount = $course["creditCount"];
        $facultyID = $course["facultyID"];
        $lecturerID = $course["lecturerID"];

        $weekDay = $course["weekDay"];
        $classroomID = $course["classroomID"];
        $startSession = $course["startSession"];
        $endSession = $course["endSession"];

        $startDate = $course["startDate"];
        $endDate = $course["endDate"];

        // $path = './pages/components/course-item.php'
        // . '?courseID=' . $courseID
        // . '&courseName=' . $courseName
        // . '&courseType=' . $courseType
        // . '&facultyID=' . $facultyID
        // . '&lecturerID=' . $lecturerID;
        // include $path;

        include './pages/components/course-item.php';
    }
?>