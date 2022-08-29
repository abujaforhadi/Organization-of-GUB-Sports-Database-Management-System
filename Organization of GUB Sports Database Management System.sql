CREATE DATABASE GUB_Sports;

--create table
CREATE TABLE student_info(student_ID int NOT null PRIMARY KEY,name varchar(15),batch varchar(5),dept_name varchar(10),Age int CHECK (Age>=18),Gender enum('Male','Female') );

CREATE TABLE Current_student(student_roll int PRIMARY KEY,student_ID int ,FOREIGN KEY(student_ID) REFERENCES student_info(student_Id),semester varchar(10),contract_no int(15));
CREATE TABLE alumni(alumni_ID int PRIMARY KEY,Occupation varchar(15),contract_no int,student_ID int ,FOREIGN KEY(student_ID) REFERENCES student_info(student_Id));
CREATE TABLE funds(alumni_ID int ,FOREIGN KEY(alumni_ID) REFERENCES alumni(alumni_ID),account_no int NOT NULL, balance int NOT NULL);
CREATE TABLE players(prayer_ID int PRIMARY KEY,student_roll int ,FOREIGN KEY(student_roll) REFERENCES current_student(student_roll),student_ID int ,FOREIGN KEY(student_ID) REFERENCES student_info(student_Id),sports_name varchar(15));
CREATE TABLE events(event_date date NOT NULL,event_name varchar(15),student_roll int ,FOREIGN KEY(student_roll) REFERENCES current_student(student_roll));

-- describing table

Describe student_info;
Describe current_student;
Describe alumni;
Describe funds;
Describe events;
Describe players;

-- data insersion 

-- insert on student_info table

INSERT INTO student_info()
    VALUES(203002013,'Ismail','203','CSE',25,'Male'),
    (203002007,'Muntajima','203','CSE',20,'Female'),
    (222002005,'Misty','192','CSE',19,'Female'),
    (203002054,'Huda','203','EEE',20,'Male'),
    (221002009,'Rasul','221','CSE',21,'Male'),
     (171002002,'Opi','171','CSE',20,'Male'),
    (222002001,'sohel','222','EEE',26,'Male'),
    (201002015,'Parvej','201','CSE',22,'Male'),
    (201002016,'Arnob','201','CSE',24,'Male'),
    (213002015,'Shoriful','213','CSE',23,'Male'),
    (173002081,'Munna','173',' BBA',22,'Male'),
    (211002065,'Mustafiz','211','CSE',27,'Male'),
    (163002001,'Emon','163','CSE',30,'Male'),    
    (171002001,'Shihab','171','EEE',20,'Male'),
    (202002003,'mahbuba','202','BBA',26,'Female'),
    (161001048,'Faisal','161','CSE',20,'Male'),
    (163002043,'Shuvo','163','CSE',28,'Male'),
    (181002068,'Rafi','181','EEE',31,'Male'),
    (183001015,'Tahmid','218','TEX',26,'Male'),
    (182002011,'Reyan','182','TEX',19,'Male'),
    (221003081,'Nazmul','221',' BBA',35,'Male'),
    (19207081,'Bijoy','192','CSE',23,'Male'),
    (211002082,'Mahmuda','211','CSE',25,'Female'),
    (213002088,'Shovon','213','CSE',19,'Male'),
    (151002001,'Rafia','151','CSE',30,'Female'),
    (203002048,'jafor','6th','CSE',20,'Male')
    (153002002,'Rifat','153','CSE',24,'Male');


-- insert on current_student table

INSERT INTO current_student() 
VALUES (048,203002048,'6th',01303744717),
(013,203002013,'6th',01719561005),
(007,203002007,'6th',01711561005),
(005,222002005,'2th',01721561005),
(009,221002009,'8th',01716961005),
(065,211002065,'4th',01700561005),
(002,171002002,'11th',01716865605),
(054,203002054,'6th',01956482384),
(011,182002011,'7th',0130020454),
(081,221003081,'6th',01856482384);



-- insert on alumni table

INSERT INTO alumni() 
VALUES (1,'Teacher',01956215485,151002001),
(2,'GOVT Employe',01765478932,161001048),
(3,'IT Engineer',01658947150,163002043),
(4,'GOVT Employe',01495412002,181002068),
(5,'banker',01761781245,153002002),
(6,'Software Engineer',01315464896,171002001);


-- insert on funds table

INSERT INTO funds() 
VALUES (1,151002,3000),
(2,161001,7000),
(3,181005,15000),
(4,16003,9000),
(5,15001,1000),
(6,17007,8500);

-- insert on players table

INSERT INTO players() 
VALUES (1,007,203002007,'ludo'),
(2,054,203002054,'ludo'),
(3,005,222002005,'ludo'),
(4,007,203002007,'ludo'),
(5,009,221002009,'Football'),
(6,007,203002007,'Chess'),
(7,011,182002011,'Football'),
(8,013,203002013,'Cricket'),
(9,013,203002013,'Cards'),
(10,011,182002011,'Football'),
(11,081,221003081,'Football'),
(12,011,182002011,'Cards'),
(13,011,182002011,'Cricket'),
(14,048,203002048,'Cards'),
(15,013,203002013,'Cricket'),
(16,065,211002065,'Chess'),
(17,065,211002065,'Cards'),
(18,048,203002048,'Football'),
(19,009,221002009,'Football'),
(20,009,221002009,'Chess'),
(21,081,221003081,'Cricket'),
(22,054,203002054,'Football'),
(23,054,203002054,'Football');

-- insert on events table

INSERT INTO events()
VALUES('20/08/22', 'lodo',007),
('17/08/22', 'Cricket',011 ),
('19/08/22', 'Cards', 013),
('20/08/22', 'Chess', 005),
('20/08/22', 'lodo', 5),
('19/08/22', 'Cards', 65),
('20/08/22', 'lodo', 7),
('21/08/22', 'Football', 54),
('17/08/22', 'Cricket', 13),
('21/08/22', 'Football', 9),
('19/08/22', 'Cards', 11),
('21/08/22', 'Football', 48),
('17/08/22', 'Cricket', 48),
('21/08/22', 'Football', 81),
('21/08/22', 'Football', 11),
('17/08/22', 'Cricket', 81),
('20/08/22', 'Chess',65 ),
('19/08/22', 'Cards',48 );

-- queries

SELECT * from student_info;
SELECT * from current_student;
SELECT * from alumni;  
SELECT * from funds;  
SELECT * from events;  
SELECT * from players; 
delete from students where student_roll= '19207081';  


--lab4
--UPDATE a multiple columns

select * from student_info;
update student_info set batch='162',name='Khan' where student_id ='163002001';
select * from student_info;
update events set event_date='22-09-01' where event_name='Football';
update events set event_date='22-09-03' where (event_name='Cricket');
update events set event_date='22-08-31' where (event_name='Cards');
update events set event_date='22-09-02' where (event_name='Chess')||(event_name='lodo');

--add/drop attributes/column from table
ALTER TABLE alumni ADD COLUMN Email varchar(45);
ALTER TABLE alumni DROP COLUMN Email ;
--Changing columns name
ALTER TABLE student_info CHANGE COLUMN name student_name varchar(15) NOT NULL;

--lab5
SELECT alumni_id,balance 
FROM funds 
WHERE balance>7000;

--lab6
SELECT student_id,student_roll
FROM current_student
WHERE student_roll  BETWEEN 11 AND 60;

SELECT student_id,student_roll
FROM current_student
WHERE student_roll NOT BETWEEN 11 AND 60;

--union all query
select student_ID
from student_info
union all
select student_ID from alumni;

SELECT name,dept_name
FROM student_info
WHERE name like '_____' AND dept_name='CSE'

SELECT name,dept_name
FROM student_info
WHERE name like '%o%' 

SELECT name
FROM student_info
ORDER BY name  DESC LIMIT 5;

--lab07
SELECT SUM(balance) as Total_balance,MAX(balance) AS max_balance, min(balance),COUNT(alumni_ID) AS total_alumni
FROM funds

SELECT UCASE(name),LCASE(name),LENGTH(name),batch
FROM student_info
WHERE batch=203;

SELECT DISTINCT dept_name
FROM student_info;

SELECT CONCAT(alumni.alumni_ID,alumni.Occupation)
FROM alumni

--lab8

SELECT c.student_ID as "Student Id",c.contract_no,e.event_name,e.student_roll
FROM current_student c 
LEFT JOIN events e 
ON e.student_roll=c.student_roll
order by  e.event_name;

SELECT student_info.name,players.prayer_ID,players.sports_name
FROM student_info
INNER JOIN current_student
ON student_info.student_ID=current_student.student_ID 
INNER JOIN players
ON players.student_roll=current_student.student_roll
ORDER BY players.sports_name;

SELECT name as alumni_name,alumni.Occupation,student_info.Age
FROM alumni,student_info
WHERE alumni.student_ID=student_info.student_ID and age<>21

--group by & descending order

SELECT events.event_name AS game_name
FROM events
GROUP BY event_name
order by count(event_name) desc;

--lab9

--TRIGGER(ERROR)
/
CREATE TRIGGER 'balance_Constraints'
BEFORE INSERT ON funds
FOR EACH ROW
BEGIN IF NEW.balance < 1000 THEN SET NEW.balance= 1000;
END IF;
END
/


--lab10

--commit
select * 
from student_info;
commit;

INSERT INTO `student_info`(`student_ID`, `name`, `batch`, `dept_name`, `Age`, `Gender`) VALUES (19207080,'Azad',191,'EEE',25,'Male')
select * 
from student_info;

-- Save point and roll backs
savepoint cont_1;
INSERT INTO `student_info`(`student_ID`, `name`, `batch`, `dept_name`, `Age`, `Gender`) VALUES (19207080,'Azad',191,'EEE',25,'Male')
select * from student_info;

-- roll back to cont_1 savepoint

rollback TO cont_1;
select * from student_info;
--rollback TO last commit
rollback;
select * from student_info;
