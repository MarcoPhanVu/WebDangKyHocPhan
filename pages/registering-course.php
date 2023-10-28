<div class="displayer container" data-destination="registering-course">
    <h2 class="title">This is Registering-course</h2>

    <?php
        $data_query = "SELECT * FROM course";
        $data_query_result = mysqli_query($connection, $data_query);

        $course_list = mysqli_fetch_all($data_query_result, MYSQLI_ASSOC);
        // $course_list = mysqli_fetch_all($data_query_result, MYSQLI_ASSOC);
    
        // print_r($course_list);

        // echo (gettype($course_list[12]["courseID"]));

        foreach ($course_list as $course) {
            // echo "some shits";
            $courseID = $course["courseID"];
            $courseName = $course["courseName"];
            $courseType = $course["courseType"];
            $facultyID = $course["facultyID"];
            $lecturerID = $course["lecturerID"];

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

<!-- "DELETE FROM course WHERE `course`.`courseID` = 'COMP170103'" -->

</div>