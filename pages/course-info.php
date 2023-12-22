<div class="displayer container" data-destination="course-info">
    <h2 class="title">This is Course-Info</h2>

    <?php
        $date = "2023-12-21";
        $dayofweek = date('w', strtotime($date));
        $result    = date('Y-m-d', strtotime(($day - $dayofweek).' day', strtotime($date)));
        echo "day of week: $dayofweek<br>"; 
        echo "weekDay: $result"; 
    ?>

</div>