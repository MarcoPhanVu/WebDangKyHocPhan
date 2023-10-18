DROP database DKHP;

CREATE DATABASE DKHP;
USE DKHP;



CREATE TABLE faculty (
	facultyID VARCHAR(10) NOT NULL,
	facultyName VARCHAR(100),
	studentCount INT(50),
	PRIMARY KEY (facultyID)
);

CREATE TABLE lecturer (
	lecturerID VARCHAR(10) NOT NULL UNIQUE,
	lecturerName VARCHAR(100),
	PRIMARY KEY (lecturerID),

	facultyID VARCHAR(10) NOT NULL,
	CONSTRAINT fk_facultyID_ltr FOREIGN KEY (facultyID) REFERENCES faculty(facultyID) ON DELETE CASCADE
);

CREATE TABLE student (
	studentID INT(50) NOT NULL UNIQUE AUTO_INCREMENT,
	firstName VARCHAR(100),
	lastName VARCHAR(100),
	PRIMARY KEY (studentID),
	tempLoginCredential VARCHAR(100),

	facultyID VARCHAR(10) NOT NULL,
	CONSTRAINT fk_facultyID_std FOREIGN KEY (facultyID) REFERENCES faculty(facultyID) ON DELETE CASCADE
);

CREATE TABLE course (
	courseID VARCHAR(10) NOT NULL UNIQUE,
	courseName VARCHAR(100),
	courseType VARCHAR(100),
	PRIMARY KEY (courseID),

	facultyID VARCHAR(10) NOT NULL,
	lecturerID VARCHAR(10),
	CONSTRAINT fk_facultyID_crs FOREIGN KEY (facultyID) REFERENCES faculty(facultyID) ON DELETE CASCADE,
	CONSTRAINT fk_lecturerID_crs FOREIGN KEY (lecturerID) REFERENCES lecturer(lecturerID) ON DELETE CASCADE
);

CREATE TABLE attendState ( -- Tình trạng học phần của sinh viên
	studentID INT(50) NOT NULL,
	courseID VARCHAR(10) NOT NULL,
	state INT(1),
	score INT(10),

	CONSTRAINT fk_studentID_attendState FOREIGN KEY(studentID) REFERENCES student(studentID) ON DELETE CASCADE,
	CONSTRAINT fk_courseID_attendState FOREIGN KEY(courseID) REFERENCES course(courseID) ON DELETE CASCADE
);

CREATE TABLE courseState (
	courseID VARCHAR(10) NOT NULL,
	

	CONSTRAINT fk_courseID_courseState FOREIGN KEY(courseID) REFERENCES course(courseID) ON DELETE CASCADE

);

-- CREATE TABLE scheduleBase (
-- 	
-- );

CREATE TABLE attendingLog (
	attendID VARCHAR(10) NOT NULL UNIQUE,
	timeStamp TIME,
	statis VARCHAR(100) NOT NULL,
	PRIMARY KEY(attendID),

	studentID INT(50) NOT NULL,
	courseID VARCHAR(10) NOT NULL,

	CONSTRAINT fk_studentID_att FOREIGN KEY(studentID) REFERENCES student(studentID) ON DELETE CASCADE,
	CONSTRAINT fk_courseID_att FOREIGN KEY(courseID) REFERENCES course(courseID) ON DELETE CASCADE
);

CREATE TABLE teaches (
	lecturerID VARCHAR(10) NOT NULL,
	courseID VARCHAR(10) NOT NULL,

	CONSTRAINT fk_lecturerID_tch FOREIGN KEY(lecturerID) REFERENCES lecturer(lecturerID) ON DELETE CASCADE,
	CONSTRAINT fk_courseID_tch FOREIGN KEY(courseID) REFERENCES course(courseID) ON DELETE CASCADE
);


-- ALTER TABLE wallet_category ADD COLUMN connectionID INT(10) PRIMARY KEY; 
-- Left it for future me to copy the syntax, nothing special;
-- Thanks, future you find it very useful, even though I'm not using it yet.