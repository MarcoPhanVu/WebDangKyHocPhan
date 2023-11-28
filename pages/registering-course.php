<div class="displayer container" data-destination="registering-course">
    <h2 class="title">This is Registering-course</h2>
    <div class="course-selector">
    <?php

        // if (isset($_POST[]))

        $course_main_query = "SELECT * FROM dkhp.course WHERE courseID REGEXP '01$'";
        $course_main_query_result = mysqli_query($connection, $course_main_query);
        $course_main_list = mysqli_fetch_all($course_main_query_result, MYSQLI_NUM);

        foreach ($course_main_list as $course) { // Create List of courses to choose
            echo '<button type="button" class="course-selector-item" data-courseMain="'. substr($course[0], 0, strlen($course[0]) - 2) . '">' . substr($course[0], 0, strlen($course[0]) - 2) . '</button>';
        }
    ?>
    </div>

    </div>

    <?php include './pages/components/course-all.php' ?>

    <?php 
        // print_r(array_keys($course_list[0]));cd

        
    ?>

<!-- "DELETE FROM course WHERE `course`.`courseID` = 'COMP170103'" -->

</div>