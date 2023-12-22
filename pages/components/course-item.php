<button class="course-item" type="submit" name="course-id" value="<?php echo $course_id?>">
    <?php
        echo "<div class='course-designation'>Course ID: [" . $_GET['faculty-id'] . ".$course_id] - $course_name</div>";

        // echo "<input type='hidden' name='course-desig' value='" . $_GET['faculty-id'] . $course_id . "'>";
    ?>
    
    <div class="course-ext-info">
        <label>
            Type:
            <?php
            if ($course_type == 0) {
                echo "Common Curriculum"; // Cơ sở chung
            }
            else if ($course_type == 1) {
                echo "Core Curriculum"; // Cơ sở ngành
            }
            else if ($course_type == 2) {
                echo "Major Curriculum"; // Chuyên nghành
            }
            else {
                echo "no idea";
            }
            ?>
        </label>
        <label>
            Credits:
            <?php
                echo " " . $course_number_of_credits
            ?>
        </label>
    </div>

    <div class="course-status">
        <label for="nothing">
            
            <?php
                $query = "SELECT * FROM class WHERE course_id=" . $course_id;
                $result = DataProvider::get_instance()->execute_query($query);
                // $data_list = $result->fetchAll();
                $rows_amount = $result->rowCount();
                echo "Available classes: $rows_amount<br>";
            ?>
        </label>
    </div>
</button>