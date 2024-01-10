<div class="displayer
<?php
if (isset($_GET["course-id"]) || isset($_GET["faculty-id"]))
    echo "active";
else
    echo "hidden";
?>" data-destination="registering-course">
    <div class="course-filter-tab">
        <h2 class="title">This is Registering-course
            <?php
            // $timestamp = date("Y-m-d H:i:s");
            // echo "Time=$timestamp";
            ?>
        </h2>
        <form action="<?php echo SITEURL ?>" id="course-select-form" method="GET">
            <label for="faculty-selector">Faculty:
                <select name="faculty-id" id="faculty-selector">
                    <?php
                    $faculty_query = "SELECT * FROM faculty";
                    $faculty_result = DataProvider::get_instance()->execute_query($faculty_query);
                    $faculty_list = $faculty_result->fetchAll();

                    // List of Faculties
                    foreach ($faculty_list as $faculty) {
                        $faculty_id = $faculty["id"];
                        $faculty_name = $faculty["name"];

                        // If selected course
                        $is_faculty_selected = isset($_GET["faculty-id"]) && $_GET["faculty-id"] == $faculty_id;

                        echo "<option class='faculty-selector-item' data-faculty-id='$faculty_id'";
                        if ($is_faculty_selected) echo " selected ";
                        echo "value='$faculty_id'>
                        [$faculty_id] $faculty_name 
                        </option>";
                    }
                    ?>
                </select>
            </label>

            <input type="hidden" name="requested-faculty" value="true">
            <input type="submit" value="Search">

            <?php
            // Display selected course
            if (isset($_GET["course-id"])) {
                $course_query = "SELECT * FROM course WHERE id = " . $_GET["course-id"];
                $course_result = DataProvider::get_instance()->execute_query($course_query);
                $course_list = $course_result->fetch();

                $course_name = $course_list[1];
                echo "<label class='course-name'>Selected Course: " . $course_name . "</label>";
            }
            ?>
        </form>
    </div>

    <!-- AFTER REQUESTED FOR FACULTY ID -->
    <div class="course-displayer">
        <div class="course-precise-select-form">
            <?php
            if (isset($_GET["faculty-id"]) && !isset($_GET["course-id"])) {
                $course_query = "SELECT * FROM course WHERE faculty_id = " . $_GET["faculty-id"];
                $course_result = DataProvider::get_instance()->execute_query($course_query);
                $course_list = $course_result->fetchAll();

                // Create List of courses to choose
                foreach ($course_list as $course) {
                    $course_id = $course["id"];
                    $course_faculty = $course["faculty_id"];
                    $course_name = $course["name"];
                    $course_number_of_credits = $course["number_of_credits"];
                    $course_type = $course["type"];

                    echo "<form action='" . SITEURL . "' method='GET'>";
                    echo "<input type='hidden' name='faculty-id' value='" . $_GET['faculty-id'] . "'>";
                    include './pages/components/course-item.php';
                    echo "</form>";
                }
            }
            // else {
            //     echo "NOTHING FROM COURSE DISPLAYER, no facultyID";
            // }
            ?>
        </div>
    </div>

    <!-- AFTER REQUESTED FOR COURSE ID -->
    <div class="class-displayer">
        <form action="<?php SITEURL ?>" id="class-select-form" method="GET">
            <?php
            if (isset($_GET["faculty-id"]) && isset($_GET["course-id"])) {
                $class_query = "SELECT * FROM class WHERE course_id = " . $_GET["course-id"];
                $class_result = DataProvider::get_instance()->execute_query($class_query);
                $class_list = $class_result->fetchAll();

                foreach ($class_list as $class) { // Create List of classes to choose
                    $class_id = $class["id"];
                    $start_session = $class["start_session"];
                    $end_session = $class["end_session"];
                    $start_date = $class["start_date"];
                    $end_date = $class["end_date"];
                    $lecturer_id = $class["lecturer_id"];
                    $course_id = $class["course_id"];
                    $classroom_id = $class["classroom_id"];
                    $class_designation = $_GET['faculty-id'] . "." . $_GET["course-id"] . "." . $class_id;

                    include './pages/components/class-item.php';
                }
                echo "<input type='submit' value='Đăng ký' for='class-select-form'>";
            }
            // else {
            //     echo "NOTHING FROM CLASS DISPLAYER, no courseID";
            // }
            ?>
        </form>
    </div>
</div>