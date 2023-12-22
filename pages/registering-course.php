<div class="displayer container" data-destination="registering-course">
    <div class="course-filter-tab">
        <h2 class="title">This is Registering-course</h2>
        <?php
        // echo SITEURL;
        // print_r ($_SERVER);
        // print_r ($_SESSION);
        ?>
        <form action="<?php echo SITEURL ?>" id="course-select-form" method="GET">
            <label for="faculty-selector">Faculty:
                <select name="faculty-id" id="faculty-selector">
                    <?php
                    $faculty_query = "SELECT * FROM faculty";
                    $faculty_query_result = mysqli_query($connection, $faculty_query);
                    $faculty_list = mysqli_fetch_all($faculty_query_result, MYSQLI_ASSOC);
    
                    foreach ($faculty_list as $faculty) { // List of Faculties
                        $faculty_id = $faculty["id"];
                        $faculty_name = $faculty["name"];
                        
                        // IF SELECTED COURSE
                        
                        echo '<option 
                        class="faculty-selector-item" 
                        data-faculty-id="' . $faculty_id . '"';
                        if (isset($_GET["faculty-id"]) && $_GET["faculty-id"] == $faculty_id) {
                            echo " selected ";
                        }
                        echo 'value="' . $faculty_id . '">
                        [' . $faculty_id . "] " . $faculty_name . ' 
                        </option>';
                    }
                    ?>
                </select>
            </label>
            <?php
                // DISPLAY SELECTED COURSE
                if (isset($_GET["course-id"])) {
                    $course_query = "SELECT * FROM course WHERE id = " . $_GET["course-id"];
                    $course_query_result = mysqli_query($connection, $course_query);
                    $course_list = mysqli_fetch_row($course_query_result);

                    $course_name = $course_list[1];

                    echo "<label class='course-name'>Selected Course: " . $course_name . "</label>";
                }
            ?>
            
            <input type="hidden" name="requested-faculty" value="true">
            <input type="submit" value="Search">
        </form>
    </div>
    <!-- AFTER REQUESTED FOR FACULTY ID -->
    <div class="course-displayer">
        <form action="<?php SITEURL ?>" id="course-precise-select-form" method="GET">
            <?php
            if (isset($_GET["faculty-id"])) {
                // print_r($_GET);
                $course_query = "SELECT * FROM course WHERE faculty_id = " . $_GET["faculty-id"];
                $course_query_result = mysqli_query($connection, $course_query);
                $course_list = mysqli_fetch_all($course_query_result, MYSQLI_ASSOC);
        
                foreach ($course_list as $course) { // Create List of courses to choose
                    $course_id = $course["id"];
                    $course_faculty = $course["faculty_id"];
                    $course_name = $course["name"];
                    $course_number_of_credits = $course["number_of_credits"];
                    $course_type = $course["type"];
        
                    include './pages/components/course-item.php';
                }
            } else {
                echo "NOTHING FROM COURSE DISPLAYER, no facultyID";
            }

            ?>
        </form>
    </div>

    <!-- AFTER REQUESTED FOR COURSE ID -->
    <div class="class-displayer">
        <form action="<?php SITEURL ?>" id="course-precise-select-form" method="GET">
            <?php
            if (isset($_GET["course-id"])) {
                $class_query = "SELECT * FROM class WHERE course_id = " . $_GET["course-id"];
                // echo "CHECK THIS OUT: $class_query <br>";
                $class_query_result = mysqli_query($connection, $class_query);
                $class_list = mysqli_fetch_all($class_query_result, MYSQLI_ASSOC);
        
                foreach ($class_list as $class) { // Create List of classes to choose
                    $class_id = $class["id"]; 
                    $start_session = $class["start_session"]; 
                    $end_session = $class["end_session"]; 
                    $start_date = $class["start_date"]; 
                    $end_date = $class["end_date"]; 
                    $lecturer_id = $class["lecturer_id"]; 
                    $course_id = $class["course_id"]; 
                    $classroom_id = $class["classroom_id"]; 
                    include './pages/components/class-item.php';
                }
            } else {
                echo "NOTHING FROM CLASS DISPLAYER, no courseID";
            }
            ?>
        </form>
    </div>

</div>

<?php
// echo "<p>SOMESHIT</p>";
?>

<?php // include './pages/components/course-all.php' ?>

<?php
    // print_r(array_keys($course_list[0]));cd
?>