<label for="<?php echo $class_designation?>" class="class-item">
    <input 
        class="class-designation" 
        type="radio" 
        name="class-id" 
        id="<?php echo $class_designation?>" 
        value="<?php echo $class_id?>"
    >
    
    <div class="class-info">
        <div class="lefty">
            <?php
                echo "<label>[$class_designation] - $course_name</label>";
                echo "<p class='class-lecturer'>Lecturer: ";
                
                $query = "SELECT * FROM lecturer WHERE id=" . $lecturer_id;
                $result = DataProvider::get_instance()->execute_query($query);
                $lecturer = $result->fetch();
                
                echo $lecturer['name'];
                echo "</p>";

                echo "<p class='class-attendance'>Attended: 0";
                echo "</p>";
            ?>
        </div>
        <div class="righty">
            <?php
                echo "<p class='class-session'>Time: " . $weekdays[date('w', strtotime($start_date))] . ", Session: [$start_session] - [$end_session]</p>";
                echo "<p class='class-duration'>From $start_date to $end_date</p>";
                echo "<p class='class-location'>Location: ";
                
                $query = "SELECT * FROM classroom WHERE id=" . $classroom_id;
                $result = DataProvider::get_instance()->execute_query($query);
                $classroom = $result->fetch();
                $location = $classroom["branch"] . "_" . $classroom["building"] . $classroom["floor"];
                if ($classroom["room"] < 10) {
                    $location = $location . "0";
                }
                $location = $location . $classroom["room"];
                echo "$location</p>";
            ?>
        </div>
    </div>
</label>