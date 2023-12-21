DROP DATABASE DKHP;

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
	studentID INT(5) NOT NULL UNIQUE AUTO_INCREMENT,
	firstName VARCHAR(100),
	lastName VARCHAR(100),
	PRIMARY KEY (studentID),

	facultyID VARCHAR(10) NOT NULL,
	CONSTRAINT fk_facultyID_std FOREIGN KEY (facultyID) REFERENCES faculty(facultyID) ON DELETE CASCADE
);

CREATE TABLE course (
	courseID VARCHAR(10) NOT NULL UNIQUE,
	courseName VARCHAR(100),
	courseType VARCHAR(100),
	creditCount INT(5) NOT NULL,
	facultyID VARCHAR(10) NOT NULL,
	lecturerID VARCHAR(10),

    weekDay VARCHAR(20),
    classroomID VARCHAR(10),
    startSession INT(2),
    endSession INT(2),
    
    startDate DATE,
    endDate DATE,
	
	PRIMARY KEY (courseID),

	CONSTRAINT fk_facultyID_crs FOREIGN KEY (facultyID) REFERENCES faculty(facultyID) ON DELETE CASCADE,
	CONSTRAINT fk_lecturerID_crs FOREIGN KEY (lecturerID) REFERENCES lecturer(lecturerID) ON DELETE CASCADE
);

CREATE TABLE teaches (
	lecturerID VARCHAR(10) NOT NULL,
	courseID VARCHAR(10) NOT NULL,

	CONSTRAINT fk_lecturerID_tch FOREIGN KEY(lecturerID) REFERENCES lecturer(lecturerID) ON DELETE CASCADE,
	CONSTRAINT fk_courseID_tch FOREIGN KEY(courseID) REFERENCES course(courseID) ON DELETE CASCADE
);
