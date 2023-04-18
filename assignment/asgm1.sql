CREATE TABLE Student
(   studNo NUMBER(4),
    studName VARCHAR2(30),
    Address VARCHAR2(20),
    mobileNo NUMBER (12),
    PRIMARY KEY (studNo));

insert into Student
values (123,'Dann','Jalan 3,taman indah',011234567);
insert into Student
values (124,'Abraham','Jalan 1,taman indah',011234568);
insert into Student
values (125,'Brody','Jalan 2,taman indah',011234569);
insert into Student
values (126,'Clint','Jalan 5,taman indah',011234570);

SELECT * 
FROM Student 
ORDER BY studName ASC;

CREATE TABLE Course
(   courseNo NUMBER(4),
    courseName VARCHAR2(30),
    creditHour NUMBER(5),
     course_level NUMBER(5),
    PRIMARY KEY (courseNo));

insert into Course
values (223,'Database',13,2);

CREATE TABLE Registration (
  regDate DATE,
  semester NUMBER(2),
  session_ NUMBER(2),
  studNo NUMBER(10),
  courseNo NUMBER(10),
  CONSTRAINT STUDENT_ID_FK FOREIGN KEY(studNo) REFERENCES Student, 
  CONSTRAINT COURSE_ID_FK FOREIGN KEY(courseNo) REFERENCES Course
);

insert into Registration
values (TO_DATE('2022-04-16', 'YYYY-MM-DD'), 3, 7, 123, 223);

CREATE TABLE Project 
(   projNo NUMBER(10),
    projName VARCHAR2(30),
    courseNo NUMBER(10),
    PRIMARY KEY (projNo));

insert into Project
values (1234,'assignment 1',3304);
    
CREATE TABLE Assignment (
  projNo NUMBER(12),
  studNo NUMBER(5),
  startDate DATE,
  dueDate DATE,
  hoursSpent NUMBER(4,2),
  CONSTRAINT PROJECT_NO_FK FOREIGN KEY(projNo) REFERENCES Project(projNo), 
  CONSTRAINT STUDENTS_ID_FK FOREIGN KEY(studNo) REFERENCES Student(studNo)
);

insert into Assignment
values (1234,123,TO_DATE('2022-04-20', 'YYYY-MM-DD'),TO_DATE('2022-05-25', 'YYYY-MM-DD'), 10.50 );

select * from Assignment;
DROP TABLE Student;
DROP TABLE Course;
DROP TABLE Registration;
DROP TABLE Project;
DROP TABLE Assignment;


desc Student
desc Course
desc Registration
desc Project
desc Assignment