<div class="displayer container" data-destination="registering-course">
    <h2 class="title">This is Registering-course</h2>
    <div class="course-selector">
    <?php
        $course_main_query = "SELECT * FROM dkhp.course WHERE courseID REGEXP '01$'";
        $course_main_query_result = mysqli_query($connection, $course_main_query);
        $course_main_list = mysqli_fetch_all($course_main_query_result, MYSQLI_NUM);

        foreach ($course_main_list as $course) { // Create List of courses to choose
            echo '<button type="button" class="course-selector-item" data-courseMain="'. substr($course[0], 0, strlen($course[0]) - 2) . '">' . substr($course[0], 0, strlen($course[0]) - 2) . '</button>';
        }
    ?>
    </div>

    </div>
    <?php
        // Get all courses
        $course_all_query = "SELECT * FROM course";
        // $course_all_query = "SELECT * FROM course WHERE courseID LIKE 'COMP13%'";
        $course_all_query_result = mysqli_query($connection, $course_all_query);

        $course_list = mysqli_fetch_all($course_all_query_result, MYSQLI_ASSOC);
        // $course_list = mysqli_fetch_all($course_all_query_result, MYSQLI_ASSOC);
    
        // print_r($course_list);

        // echo (gettype($course_list[12]["courseID"]));

        foreach ($course_list as $course) {
            $courseID = $course["courseID"];
            $courseGroup = substr($courseID, 0, strlen($courseID) - 2);
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