-- ╔═════════════════════════════════════════════════════════════════════════════════════════════════╗
-- ║ this script only me and god knows how it works, but now none of us know how it works, good luck ║ ¯\_(ツ)_/¯
-- ╚═════════════════════════════════════════════════════════════════════════════════════════════════╝

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

-- ╔════════════════════╗ -------------------------------------------------------------------------
-- ║ create main tables ║ -------------------------------------------------------------------------
-- ╚════════════════════╝ -------------------------------------------------------------------------
-- have no key ----------------------------------
create table faculty (
    id                  int unsigned        not null    auto_increment,
    name                varchar(100),
    
    primary key (id)
);

create table course (
    id                  int unsigned        not null    auto_increment,
    name                varchar(100),
    number_of_credits   bit(3),
    type                bit(2), -- 2 chuyên ngành, 1 cơ sở ngành, 0 cơ sở chung
    
    primary key (id)
);

create table classroom (
    id                  int unsigned        not null    auto_increment,
    address             varchar(100),
    building            char(1),
    floor               tinyint unsigned,
    room                tinyint unsigned,
    
    primary key (id)
);

-- has a foreign key ----------------------------
create table lecturer (
    id                  int unsigned        not null    auto_increment,
    name                varchar(100),

    faculty_id          int unsigned        not null,
    
    primary key (id)
);

create table student (
    id                  int unsigned        not null    auto_increment,
    firstname           varchar(100),
    lastname            varchar(20),

    faculty_id          int unsigned        not null,
    
    primary key (id)
);

create table class (
    id                  int unsigned        not null    auto_increment,
    name                varchar(100),
    days_of_week        bit(3),
    start_session       tinyint(2) unsigned,
    end_session         tinyint(2) unsigned,  
    start_date          date,
    end_date            date,

    lecturer_id         int unsigned        not null,
    course_id           int unsigned        not null,
    classroom_id        int unsigned        not null,
    
    primary key (id)
);

-- many-to-many relationship ----------------------------------------------------------------------
create table registration_results (
    id                  int unsigned        not null    auto_increment,

    student_id          int unsigned        not null,
    class_id            int unsigned        not null,
    
    primary key (id)
);

-- add foreign key --------------------------------------------------------------------------------
alter table lecturer                add constraint fk_lecturer_faculty              foreign key (faculty_id)    references faculty(id)      on delete cascade;
alter table student                 add constraint fk_student_faculty               foreign key (faculty_id)    references faculty(id)      on delete cascade;
alter table class                   add constraint fk_class_lecturer                foreign key (lecturer_id)   references lecturer(id)     on delete cascade;
alter table class                   add constraint fk_class_course                  foreign key (course_id)     references course(id)       on delete cascade;
alter table class                   add constraint fk_class_classroom               foreign key (classroom_id)  references classroom(id)    on delete cascade;
alter table registration_results    add constraint fk_registration_results_student  foreign key (student_id)    references student(id)      on delete cascade;
alter table registration_results    add constraint fk_registration_results_class    foreign key (class_id)      references class(id)        on delete cascade;
