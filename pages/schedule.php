<div class="displayer container" data-destination="schedule">
    <h2 class="title">This is schedule</h2>

    <?php
        // $course_query = "SELECT * FROM `registration_results` AS r_r JOIN `class` as cl ON r_r.class_id = cl.id WHERE student_id = " . $_SESSION["user-id"];
        $course_query = "SELECT 
        cou.id AS cid,
        cou.name AS cname,
        cou.number_of_credits AS credit,
        fac.id AS fid,
        fac.name AS fname
        FROM course AS cou
        JOIN faculty AS fac ON cou.faculty_id = fac.id";
        // echo $course_query;
        $course_query_result = mysqli_query($connection, $course_query);
        $course_list = mysqli_fetch_all($course_query_result, MYSQLI_ASSOC);

        foreach ($course_list as $course) {
            $cid = $course["cid"];
            $cname = $course["cname"];
            $credit = $course["credit"];
            $fid = $course["fid"];
            $fname = $course["fname"];

            echo "<div class='course-info-item'><h4 class='title'>Course ID: ";
            echo "[$fid.$cid] - $cname";
            echo "</h4><div class='desc'>Môn này tên là: $cname, với số tín chỉ là $credit, thuộc khoa $fname";
            echo "và lorem ipsum, dolor sit amet.</div></div>";
        }
        ?>

</div>