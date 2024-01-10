<div class="displayer hidden" data-destination="course-info">
    <h2 class="title">Course-Infor</h2>
    <div class="course-info-list">
        <?php
        $query = "
            SELECT 
                cou.id                  AS cid,
                cou.name                AS cname,
                cou.number_of_credits   AS credit,
                fac.id                  AS fid,
                fac.name                AS fname
            FROM
                course AS cou
            INNER JOIN faculty AS fac
                    ON cou.faculty_id = fac.id";
        $result = DataProvider::get_instance()->execute_query($query);
        $course_list = $result->fetchAll();

        foreach ($course_list as $course) {
            $cid = $course["cid"];
            $cname = $course["cname"];
            $credit = $course["credit"];
            $fid = $course["fid"];
            $fname = $course["fname"];

            include realpath(__DIR__ . "/components/course-infor-item.php");
        }
        ?>
    </div>
</div>