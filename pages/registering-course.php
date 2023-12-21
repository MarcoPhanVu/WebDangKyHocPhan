<div class="displayer container" data-destination="registering-course">
    <h2 class="title">This is Registering-course</h2>
    <?php
    echo SITEURL;
    // echo "heeheeheh";
    // print_r ($_SERVER);
    // print_r ($_SESSION);
    ?>
    <form action="registering-course.php" class="course-selector" method="GET">
        <label for="faculty-selector">Faculty selected:
            <select name="faculty" id="faculty-selector">
                <?php
                $faculty_query = "SELECT * FROM faculty";
                $faculty_query_result = mysqli_query($connection, $faculty_query);
                $faculty_list = mysqli_fetch_all($faculty_query_result, MYSQLI_ASSOC);

                foreach ($faculty_list as $faculty) { // List of Faculties
                    $faculty_id = $faculty["id"];
                    $faculty_name = $faculty["name"];

                    echo '<option class="faculty-selector-item" data-faculty-id="' . $faculty_id . '">' . $faculty_name . '</option>';
                }
                ?>
            </select>
        </label>


        <label for="course-selector">Course selected:</label>
        <select name="course" id="course-selector">
            <?php
            $course_main_query = "SELECT * FROM course";
            $course_main_query_result = mysqli_query($connection, $course_main_query);
            $course_main_list = mysqli_fetch_all($course_main_query_result, MYSQLI_ASSOC);

            foreach ($course_main_list as $course) { // Create List of courses to choose
                $course_id = $course["id"];
                $course_faculty = $course["faculty_id"];
                $course_name = $course["name"];
                $course_number_of_credits = $course["number_of_credits"];
                $course_type = $course["type"];

                echo '<option class="course-selector-item" data-course-id="' . $course_id . '">' . $course_name . ' ID:' . $course_id . '</option>';
            }
            ?>
        </select>

    </form>

</div>

<?php include './pages/components/course-all.php' ?>

<?php
// print_r(array_keys($course_list[0]));cd


?>

<!-- "DELETE FROM course WHERE `course`.`courseID` = 'COMP170103'" -->