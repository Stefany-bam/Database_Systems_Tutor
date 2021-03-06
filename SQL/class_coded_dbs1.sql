-- Creating a databse -- 
-- 2 Stages --

-- Data Analysis -- 
-- ER and Normalisation -- 

-- Physical Implementation -- 

CREATE DATABASE database_class;
USE database_class; -- specifying the databse --

CREATE TABLE student_info (
id INT NOT NULL AUTO_INCREMENT,
student_no BIGINT, 
first_name VARCHAR(255) NOT NULL,
surname_name VARCHAR(255) NOT NULL, 
year_study INT, 
program VARCHAR(255), 
gender VARCHAR(100),
PRIMARY KEY (id)
);

CREATE TABLE  lecturer_info (
id INT NOT NULL AUTO_INCREMENT,
lecture_email VARCHAR(225),
module VARCHAR(225),
lecturer_id INT NOT NULL,
PRIMARY KEY (id), 
FOREIGN KEY (lecturer_id) REFERENCES student_info(id)
);

INSERT INTO student_info (student_no, first_name, surname_name, year_study, program, gender) 
VALUES(12345, "Josh", "Martin", 2, "BSC705", "Male"),
	   (12325, "Joshua", "Mart", 2, "BSC705", "Female"),
       (12325, "John", "Martin", 2, "BDSC701", "Male"),
       (12365, "Josh", "Martoin", 2, "BSC705", "Female"),
       (12315, "Johsh", "Martin", 2, "DSC701", "Male"),
       (12375, "Joshha", "Martiwn", 2, "BSC705", "Female"), 
       (12385, "Josah", "Marwtin", 2, "BSC705", "Male"),
       (12395, "Joash", "Martin", 2, "DSC701", "Male");
       
-- Disadvantages -- 
-- Time consuming, an expensive process, training required for programmers --

INSERT INTO lecturer_info (lecture_email, module, lecturer_id)
VALUES("sirdbs@spu.ac.za", "Database systems", 1);

-- What can we do with this?? -- 

SELECT * FROM student_info;

-- SASSA -- 

SELECT * FROM lecturer_info;

-- For example sake -- 
-- Student_info: Student that applied for sssa -- 
-- lecturer_info: student at university that has NSFAS -- 
-- ID -- 

SELECT * FROM student_info 
JOIN lecturer_info ON student_info.id = lecturer_info.lecturer_id;

SELECT student_no FROM student_info;

