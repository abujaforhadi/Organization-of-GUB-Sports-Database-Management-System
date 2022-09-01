CREATE DATABASE Employee_Attendance_System;

CREATE TABLE employee(employee_id int PRIMARY KEY,name varchar(20),gender enum('Male','Female'),age int CHECK(age>17),phone_no int);
CREATE TABLE department(department_id char(5) PRIMARY KEY,department_name varchar(26));
CREATE TABLE job_title(job_id int PRIMARY KEY,job_title varchar(15),department_id char(5) ,FOREIGN KEY (department_id) REFERENCES department(department_id));
CREATE TABLE duty_time(duty_id int PRIMARY KEY,employee_id int ,FOREIGN KEY(employee_id)REFERENCES employee(employee_id),job_id int ,FOREIGN KEY(job_id)REFERENCES job_title(job_id),duration varchar(20));
CREATE TABLE attendance(employee_id int ,FOREIGN KEY(employee_id)REFERENCES employee(employee_id),duty_id int ,FOREIGN KEY(duty_id) REFERENCES duty_time(duty_id), job_id int ,FOREIGN KEY(job_id)REFERENCES job_title(job_id),salary int);
CREATE TABLE job_leave(employee_id int ,FOREIGN KEY(employee_id)REFERENCES employee(employee_id),job_id int ,FOREIGN KEY(job_id)REFERENCES job_title(job_id),Date date);

Describe attendance;
Describe duty_time;
DESCRIBE department;
DESCRIBE employee;
DESCRIBE job_title;
DESCRIBE job_leave;

INSERT INTO `employee`(`employee_id`, `name`, `gender`, `age`, `phone_no`)VALUES (11,'Misty','Female',25,01796351414);
INSERT INTO `employee`(`employee_id`, `name`, `gender`, `age`, `phone_no`)VALUES (12,'Ismail','male',19,01432165478);
INSERT INTO `employee`(`employee_id`, `name`, `gender`, `age`, `phone_no`)VALUES (13,'mithi','Female',24,01820165478);
INSERT INTO `employee`(`employee_id`, `name`, `gender`, `age`, `phone_no`)VALUES (14,'jafor','Male',23,019362145871);
INSERT INTO `employee`(`employee_id`, `name`, `gender`, `age`, `phone_no`)VALUES (15,'khan','Male',30,01400112548);
INSERT INTO `employee`(`employee_id`, `name`, `gender`, `age`, `phone_no`)VALUES (16,'hasin','Male',40,01634896210);
INSERT INTO `employee`(`employee_id`, `name`, `gender`, `age`, `phone_no`)VALUES (17,'rakha','Female',20,01764895632);
INSERT INTO `employee`(`employee_id`, `name`, `gender`, `age`, `phone_no`)VALUES (18,'Sobuj','Male',35,01712547893);


INSERT INTO `department`(`department_id`, `department_name`) VALUES ('CSE1','Engineering and Information Technology');
INSERT INTO `department`(`department_id`, `department_name`) VALUES ('EEE2','Field Engineer');
INSERT INTO `department`(`department_id`, `department_name`) VALUES ('MC3','Mechanical Engineer');


INSERT INTO `job_title`(`job_id`, `job_title`, `department_id`) VALUES (1,'Customer Support','CSE1');
INSERT INTO `job_title`(`job_id`, `job_title`, `department_id`) VALUES (2,'Project Engineer','EEE2');
INSERT INTO `job_title`(`job_id`, `job_title`, `department_id`) VALUES (3,'Research and Development Engineer','ME3');
INSERT INTO `job_title`(`job_id`, `job_title`, `department_id`) VALUES (4,'Web Developer','CSE1');
INSERT INTO `job_title`(`job_id`, `job_title`, `department_id`) VALUES (5,'Manager Projects','EEE2');
INSERT INTO `job_title`(`job_id`, `job_title`, `department_id`) VALUES (6,'Manager Projects','ME3');
INSERT INTO `job_title`(`job_id`, `job_title`, `department_id`) VALUES (7,'Software Engineer','CSE1');
INSERT INTO `job_title`(`job_id`, `job_title`, `department_id`) VALUES (8,'Senior Executive Engineer','EEE2');
INSERT INTO `job_title`(`job_id`, `job_title`, `department_id`) VALUES (9,'Project Engineer','ME3');

INSERT INTO duty_time() 
VALUES (11,11,1,'6th'),
(22,15,2,'7th'),
(33,16,6,'6th'),
(44,12,8,'5th'),
(55,13,9,'9th'),
(66,18,3,'10th')

INSERT INTO `attendance`(`employee_id`, `duty_id`, `job_id`, `salary`) VALUES (11,11,1,25000);
INSERT INTO `attendance`(`employee_id`, `duty_id`, `job_id`, `salary`) VALUES (12,44,8,30000);
INSERT INTO `attendance`(`employee_id`, `duty_id`, `job_id`, `salary`) VALUES (13,55,9,25600);
INSERT INTO `attendance`(`employee_id`, `duty_id`, `job_id`, `salary`) VALUES (15,22,2,20000);
INSERT INTO `attendance`(`employee_id`, `duty_id`, `job_id`, `salary`) VALUES (18,66,6,15000);
INSERT INTO `attendance`(`employee_id`, `duty_id`, `job_id`, `salary`) VALUES (16,33,3,23000);

INSERT INTO `job_leave`(`employee_id`, `job_id`, `Date`) VALUES (11,1,'2020-08-21');
INSERT INTO `job_leave`(`employee_id`, `job_id`, `Date`) VALUES (15,2,'2020-08-20');
INSERT INTO `job_leave`(`employee_id`, `job_id`, `Date`) VALUES (16,6,'2020-08-26');
INSERT INTO `job_leave`(`employee_id`, `job_id`, `Date`) VALUES (12,8,'2020-08-25');
INSERT INTO `job_leave`(`employee_id`, `job_id`, `Date`) VALUES (13,9,'2020-08-15');
INSERT INTO `job_leave`(`employee_id`, `job_id`, `Date`) VALUES (18,3,'2020-08-10');

--show data

SELECT * from attendance;
SELECT * from duty_time;
SELECT * from  department;
SELECT * from job_title;
SELECT * from  job_leave;
SELECT * from  employee;

--update data 
SELECT * from  department;
UPDATE `department` SET department_name='Area Engineer' WHERE department_id='EEE2';
SELECT * from  department;
--add column
SELECT * from  department;
ALTER TABLE department ADD COLUMN Email varchar(19);
ALTER TABLE department DROP COLUMN Email;


SELECT name,employee_id,age,phone_no
FROM employee


SELECT name,gender,salary
FROM employee,attendance
WHERE attendance.employee_id=employee.employee_id AND employee.gender='Male'

SELECT name,gender,salary
FROM employee,attendance
WHERE attendance.employee_id=employee.employee_id AND attendance.salary>20000

select name
from employee
WHERE employee.name LIKE '_____'

select name
from employee
WHERE employee.name LIKE '%a%'

