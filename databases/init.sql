-- this script only me and god knows how it works, but now none of us know how it works, good luck ¯\_(ツ)_/¯

-- ╔════════════════════════════════════════════╗
-- ║              editable options              ║
-- ╚════════════════════════════════════════════╝
-- don't forget to change the database name here and......
set @db_name            = 'user_course_registration';
set @charset_name       = 'utf8mb4';
set @collation_name     = 'utf8mb4_unicode_ci';

-- ╔════════════════════════════════════════════╗
-- ║ you can edit if you know what you're doing ║
-- ╚════════════════════════════════════════════╝
set @query_delete_db    = concat('drop   database if     exists `', @db_name, '`');
set @query_create_db    = concat('create database if not exists `', @db_name, '` character set `', @charset_name, '` collate `', @collation_name, '`');

prepare delete_stmt from @query_delete_db;
execute delete_stmt;
deallocate prepare delete_stmt;

prepare create_stmt from @query_create_db;
execute create_stmt;
deallocate prepare create_stmt;

-- ╔═══════════════════════════════════╗
-- ║ change the database name below!!! ║ ╰（‵□′）╯
-- ╚═══════════════════════════════════╝
-- v v v v v v v v v v v v v --
use `user_course_registration`;
-- ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ --

-- ═╣ create main tables ╠═════════════════════════════════════════════════════════════════════════
-- have no key ----------------------------------
create table `faculty` (
    `id`                int unsigned        not null    auto_increment,
    `name`              varchar(50),
    
    primary key (`id`)
);

create table `classroom` (
    `id`                int unsigned        not null    auto_increment,
    `branch`            varchar(3),
    `building`          varchar(4),
    `floor`             tinyint unsigned,
    `room`              tinyint unsigned,
    
    primary key (`id`)
);

-- has a foreign key ----------------------------
create table `course` (
    `id`                int unsigned        not null    auto_increment,
    `name`              varchar(100),
    `number_of_credits` tinyint(1) unsigned,
    `type`              tinyint(1) unsigned, -- 2 chuyên ngành, 1 cơ sở ngành, 0 cơ sở chung

    `faculty_id`        int unsigned        not null,
    primary key (`id`)
);

create table `lecturer` (
    `id`                int unsigned        not null    auto_increment,
    `name`              varchar(70),

    `faculty_id`        int unsigned        not null,
    primary key (`id`)
);

create table `student` (
    `id`                int unsigned        not null    auto_increment,
    `firstname`         varchar(20),
    `lastname`          varchar(50),

    `faculty_id`        int unsigned        not null,
    primary key (`id`)
);

create table `class` (
    `id`                int unsigned        not null    auto_increment,
    `start_session`     tinyint(2) unsigned,
    `end_session`       tinyint(2) unsigned,  
    `start_date`        date,
    `end_date`          date,

    `lecturer_id`       int unsigned        not null,
    `course_id`         int unsigned        not null,
    `classroom_id`      int unsigned        not null,
    primary key (`id`)
);

-- many-to-many relationship --------------------
create table `registration_results` (
    `id`                varchar(20)         not null,

    `student_id`        int unsigned        not null,
    `class_id`          int unsigned        not null,
    primary key (`id`)
);

-- many-to-many relationship --------------------
create table `registration_histories` (
    `id`                varchar(20)         not null,
    `timestamp`         TIMESTAMP           not null,
    `action`            varchar(20)         not null,

    `student_id`        int unsigned        not null,
    `class_id`          int unsigned        not null,
    primary key (`id`)
);

-- ═╣ add foreign key ╠════════════════════════════════════════════════════════════════════════════
alter table `course`                    add constraint `fk_course_faculty`                      foreign key (`faculty_id`)      references `faculty`(`id`)      on delete cascade;
alter table `lecturer`                  add constraint `fk_lecturer_faculty`                    foreign key (`faculty_id`)      references `faculty`(`id`)      on delete cascade;
alter table `student`                   add constraint `fk_student_faculty`                     foreign key (`faculty_id`)      references `faculty`(`id`)      on delete cascade;
alter table `class`                     add constraint `fk_class_lecturer`                      foreign key (`lecturer_id`)     references `lecturer`(`id`)     on delete cascade;
alter table `class`                     add constraint `fk_class_course`                        foreign key (`course_id`)       references `course`(`id`)       on delete cascade;
alter table `class`                     add constraint `fk_class_classroom`                     foreign key (`classroom_id`)    references `classroom`(`id`)    on delete cascade;
alter table `registration_results`      add constraint `fk_registration_results_student`        foreign key (`student_id`)      references `student`(`id`)      on delete cascade;
alter table `registration_results`      add constraint `fk_registration_results_class`          foreign key (`class_id`)        references `class`(`id`)        on delete cascade;
alter table `registration_histories`    add constraint `fk_registration_histories_student`      foreign key (`student_id`)      references `student`(`id`)      on delete cascade;
alter table `registration_histories`    add constraint `fk_registration_histories_class`        foreign key (`class_id`)        references `class`(`id`)        on delete cascade;

delimiter $$
create procedure `get_all_classrooms_by_building` (
    _branch     varchar(3),
    _building   varchar(4)
) begin
    select
        `classroom`.`id`                                    as `room_id`,
        concat(
            `classroom`.`branch`,
            "_",
            `classroom`.`building`,
            ifnull(`classroom`.`floor`, ""),
            ifnull(lpad(`classroom`.`room`, 2, "0"), ""))   as `room`
    from
        `classroom`
    where
        `classroom`.`branch` = _branch and `classroom`.`building` = _building;
end $$

create procedure `get_all_course` () begin
    with
        class_cte as (
            select
                concat("Tiết (",
                       `class`.`start_session`, "-",
                       `class`.`end_session`, ")")                      as `session`,
                `class`.`start_date`                                    as `start_date`,
                `class`.`end_date`                                      as `end_date`,
                `class`.`lecturer_id`                                   as `lecturer_id`,
                `class`.`course_id`                                     as `course_id`,
                `class`.`classroom_id`                                  as `classroom_id`
            from
                `class`
        ),
        classroom_cte as (
            select
                `classroom`.`id`                                        as `id`,
                concat(`classroom`.`branch`,
                       "_",
                       `classroom`.`building`,
                       ifnull(`classroom`.`floor`, ""),
                       ifnull(lpad(`classroom`.`room`, 2, "0"), ""))    as `room`
            from
                `classroom`
        ),
        lecturer_cte as (
            select
                `lecturer`.`id`                                         as `id`,
                `lecturer`.`name`                                       as `name`
            from
                `lecturer`
        ),
        course_cte as (
            select
                `course`.`id`                                           as `id`,
                case
                    when `course`.`type` = 2 then "Chuyên ngành"
                    when `course`.`type` = 1 then "Cơ sở ngành"
                    else "Cơ sở chung"
                end                                                     as `type`,
                `course`.`name`                                         as `name`,
                `course`.`number_of_credits`                            as `number_of_credits`,
                lpad(`course`.`faculty_id`, 2, "0")                     as `faculty_id`,
                concat(lpad(`course`.`faculty_id`, 2, "0"), ".",
                       `course`.`type`, ".",
                       lpad(`course`.`id`, 5, "0"))                     as `course_display_id`
            from
                `course`
        ),
        new_class1 as (
            select
                `class_cte`.`start_date`            as `start_date`,
                `class_cte`.`end_date`              as `end_date`,
                `class_cte`.`session`               as `session`,
                `classroom_cte`.`room`              as `room`,
                `class_cte`.`lecturer_id`           as `lecturer_id`,
                `class_cte`.`course_id`             as `course_id`
            from
                `class_cte`
            inner join `classroom_cte`
                    on `class_cte`.`classroom_id` = `classroom_cte`.`id`
        ),
        new_class2 as (
            select
                `new_class1`.`start_date`           as `start_date`,
                `new_class1`.`end_date`             as `end_date`,
                `new_class1`.`session`              as `session`,
                `new_class1`.`room`                 as `room`,
                `lecturer_cte`.`name`               as `lecturer_name`,
                `new_class1`.`course_id`            as `course_id`
            from
                `new_class1`
            inner join `lecturer_cte`
                    on `new_class1`.`lecturer_id` = `lecturer_cte`.`id`
        )
    select
        `course_cte`.`faculty_id`           as `faculty_id`,
        `course_cte`.`course_display_id`    as `course_id`,
        `course_cte`.`name`                 as `course_name`,
        `course_cte`.`number_of_credits`    as `number_of_credits`,
        `course_cte`.`type`                 as `course_type`,
        `new_class2`.`start_date`           as `start_date`,
        `new_class2`.`end_date`             as `end_date`,
        `new_class2`.`session`              as `session`,
        `new_class2`.`room`                 as `room`,
        `new_class2`.`lecturer_name`        as `lecturer_name`
    from
        `new_class2`
    inner join `course_cte`
            on `new_class2`.`course_id` = `course_cte`.`id`;
end $$
delimiter ;
