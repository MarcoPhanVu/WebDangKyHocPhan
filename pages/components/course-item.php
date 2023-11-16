<!-- <div class="course"> -->

    <label class="course-option flex" for="<?php echo $courseID; ?>" data-group="<?php echo $courseGroup; ?>">
        <input type="radio" id="<?php echo $courseID; ?>" name="available-course-for-<?php echo $courseGroup; ?>">
        <div class="info-container">
            <?php
                echo '<div class="main-info flex flex-row">';
                    echo "<div class='mx-4'>$courseName</div>";
                    echo "<div class='mx-4'>$courseID</div>";
                echo '</div>';
                echo "<div>$courseType</div>";
                // echo "<div>$facultyID</div>";
                echo "<div>$lecturerID</div>";
            ?>
        </div>
    </label>

    
<!-- </div> -->