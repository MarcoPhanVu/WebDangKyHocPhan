<button class="course-item" type="submit" name="course-id" value="<?php echo $course_id?>">
    <?php
        echo '<div class="main-info flex flex-row">';
            echo "<div class='mx-4'>[$course_id]</div>";
            echo "<div class='mx-4'>$course_name</div>";
        echo '</div>';
        echo "<div>Faculty: $course_faculty</div>";
        // echo "<div>Credits amount: $course_number_of_credits</div>";
        if ($course_type == 0) {
            echo "<div>Type: Cơ sở chung</div>";
        }
        else if ($course_type == 1) {
            echo "<div>Type: Cơ sở ngành</div>";
        }
        else if ($course_type == 2) {
            echo "<div>Type: Chuyên Ngành</div>";
        }
        else {
            echo "<div>Type: no idea</div>";
        }
    ?>
</button>