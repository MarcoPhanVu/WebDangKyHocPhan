<!-- <div class="course"> -->

    <label class="course-selector flex" for="<?php echo $courseID; ?>">
        <input type="radio" id="<?php echo $courseID; ?>" name="available-course-for-<?php echo $courseGroup; ?>">
        <div class="info-container">
            <?php
                echo '<div class="main-info flex flex-row">';
                    echo "<p>$courseName</p>";
                    echo "<p>$courseID</p>";
                echo '</div>';
                echo "<div>$courseType</div>";
                // echo "<div>$facultyID</div>";
                echo "<div>$lecturerID</div>";
            ?>
        </div>
    </label>

    
<!-- </div> -->