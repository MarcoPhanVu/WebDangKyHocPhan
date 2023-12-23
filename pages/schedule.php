<div class="displayer container hidden" data-destination="schedule">
    <h2 class="title">This is schedule</h2>

    <?php
        // $course_query = "SELECT * FROM `registration_results` AS r_r JOIN `class` as cl ON r_r.class_id = cl.id WHERE student_id = " . $_SESSION["user-id"];
        $course_query = "SELECT * FROM `registration_results` AS r_r JOIN `class` as cl ON r_r.class_id = cl.id WHERE student_id = " . 1;
        $course_query_result = mysqli_query($connection, $course_query);
        $course_list = mysqli_fetch_all($course_query_result, MYSQLI_ASSOC);
        $course_name = $course_list[0];

        echo "<label class='course-name'>Selected Course: " . $course_name . "</label>";
    ?>

</div>