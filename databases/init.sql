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
    `id`                int unsigned        not null    auto_increment,

    `student_id`        int unsigned        not null,
    `class_id`          int unsigned        not null,
    primary key (`id`)
);

-- ═╣ add foreign key ╠════════════════════════════════════════════════════════════════════════════
alter table `course`                add constraint `fk_course_faculty`                  foreign key (`faculty_id`)      references `faculty`(`id`)      on delete cascade;
alter table `lecturer`              add constraint `fk_lecturer_faculty`                foreign key (`faculty_id`)      references `faculty`(`id`)      on delete cascade;
alter table `student`               add constraint `fk_student_faculty`                 foreign key (`faculty_id`)      references `faculty`(`id`)      on delete cascade;
alter table `class`                 add constraint `fk_class_lecturer`                  foreign key (`lecturer_id`)     references `lecturer`(`id`)     on delete cascade;
alter table `class`                 add constraint `fk_class_course`                    foreign key (`course_id`)       references `course`(`id`)       on delete cascade;
alter table `class`                 add constraint `fk_class_classroom`                 foreign key (`classroom_id`)    references `classroom`(`id`)    on delete cascade;
alter table `registration_results`  add constraint `fk_registration_results_student`    foreign key (`student_id`)      references `student`(`id`)      on delete cascade;
alter table `registration_results`  add constraint `fk_registration_results_class`      foreign key (`class_id`)        references `class`(`id`)        on delete cascade;

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
    select
        lpad(`lecturer`.`faculty_id`, 2, "0")               as `faculty_id`,
        concat(
            convert(`course`.`type`, char),
            lpad(`course`.`id`, 5, "0"))                    as `course_id`,
        `course`.`name`                                     as `course_name`,
        `course`.`number_of_credits`                        as `number_of_credits`,
        case
            when `course`.`type` = 2 then "chuyên ngành"
            when `course`.`type` = 1 then "cơ sở ngành"
            else "cơ sở chung"
        end                                                 as `course_type`,
        concat(
            "Tiết (",
            `class`.`start_session`, "-",
            `class`.`end_session`, ")")                     as `session`,
        concat(
            `classroom`.`branch`,
            "_",
            `classroom`.`building`,
            ifnull(`classroom`.`floor`, ""),
            ifnull(lpad(`classroom`.`room`, 2, "0"), ""))   as `room`,
        `class`.`start_date`                                as `start_date`,
        `class`.`end_date`                                  as `end_date`,
        `lecturer`.`name`                                   as `lecturer_name`
    from
        `class`
    inner join `lecturer`
            on `class`.`lecturer_id` = `lecturer`.`id`
    inner join `course`
            on `class`.`course_id` = `course`.`id`
    inner join `classroom`
            on `class`.`classroom_id` = `classroom`.`id`;
end $$
delimiter ;
