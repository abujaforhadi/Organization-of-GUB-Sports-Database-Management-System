CREATE DATABASE DS_Project

CREATE TABLE User(User_id int PRIMARY KEY NOT NULL, User_name varchar(20) NOT NULL, Age int, Joining_date date, Gender varchar(20));
CREATE TABLE Room(Room_id int PRIMARY KEY NOT NULL, User_id int, FOREIGN KEY (User_id) REFERENCES User(User_id));
CREATE TABLE Messege(Messege_id int PRIMARY KEY NOT NULL, Messeges varchar(100), Post_Time date, Send_by varchar(20), 
                     Room_id int, FOREIGN KEY (Room_id) REFERENCES Room(Room_id));

Lab Manual 04

ALTER TABLE user ADD email varchar(30);
ALTER TABLE user DROP COLUMN email;
ALTER TABLE user ADD COLUMN Email varchar (100) AFTER User_name;
ALTER TABLE messege CHANGE COLUMN Messeges Messege_text varchar(100) NOT NULL;

DESCRIBE User;
DESCRIBE messege;
DESCRIBE room;

INSERT INTO user(User_id, User_name, Age, Joining_date, Gender)
		VALUES (101, 'Miti', 36, '19/08/2007', 'female'),
        	   (102, 'Fahim', 33, '25/03/2010', 'male'),
               (103, 'Jitu', 39, '23/02/2007', 'male'),
               (104, 'jolly', 59, '12/05/2012', 'female'),
               (105, 'Kabir', 68, '12/05/2012', 'male'),
               (106, 'Saika', 49, '25/07/2020', 'female'),
               (107, 'Riespa', 29, '05/02/2009', 'female'),
               (108, 'Shima', 47, '03/06/2018', 'female'),
               (109, 'Ismail', 20, '02/05/2011', 'male'),
               (110, 'Jafor', 21, '25/01/2011', 'male'),
               (111, 'Fahim', 36, '30/05/2008', 'male'),
               (112, 'Saika', 25, '25/03/2018', 'female'),
               (113, 'Misty', 22, '23/02/2016', 'female');

INSERT INTO room (Room_id, User_id)
		VALUES (0101, 101),
        	   (0102, 102),
               (0103, 103),
               (0104, 104),
               (0105, 105),
               (0106, 106),
               (0107, 107),
               (0108, 108),
               (0109, 109),
               (0110, 110),
               (0111, 111),
               (0112, 112),
               (0113, 113);


INSERT INTO messege ()
		VALUES (10011, 'hi', '30/08/22', 'Jolly',0104);
INSERT INTO messege ()
		VALUES (10012, '----', '31/08/22', 'Jolly', 0104),
        	   (10013, '----', '28/08/22', 'Saika', 0106),
               (10014, '----', '20/08/22', 'Jafor', 0110),
               (10015, '----', '12/08/22', 'Isnail', 0109),
               (10016, '----', '31/08/22', 'Jolly', 0104),
               (10024, '----', '12/08/22', 'Kabir', 0105),
               (10017, '----', '15/08/22', 'Saika', 0106),
               (10018, '----', '16/08/22', 'Saika', 0106),
               (10019, '----', '18/08/22', 'Riespa', 0107),
               (10020, '----', '18/08/22', 'Shima', 0108),
               (10021, '----','12/08/22', 'Fahim', 0102),
               (10022, '----', '13/08/22', 'Fahim', 0102),
               (10023, '----', '15/08/22', 'Fahim', 0111),
               (10025, '----', '15/08/22', 'Misty', 0113);

SELECT * FROM user;
SELECT * FROM room;
SELECT * FROM messege;

DELETE FROM messege where Room_id = 0103;
UPDATE user SET age = 72
	WHERE user_id = 105;
UPDATE user SET user_name = 'Fahim Ahmed'
	WHERE user_id = 102;

update messege set post_time ='21/08/22' where (messege_id = 10014);

LAB 5

SELECT DISTINCT send_by FROM messege;

SELECT User_id, User_name, Age, Joining_date, Gender FROM user 
	WHERE user_id = 104 and user_id = 106;

SELECT user_id, user_Name, age
FROM user
WHERE age >= 30;

SELECT user_id, user_Name, age
FROM user
WHERE age <> 39;

LAB 6

SELECT user_id, user_name, age
FROM user
WHERE age BETWEEN 30 AND 40;

SELECT  messege_id, post_time, room_id
FROM messege
WHERE room_id = 106 OR room_id = 0102 AND send_by ='Fahim';

SELECT messege_id, post_time, room_id, Send_by FROM messege LIMIT 2,4 ;

SELECT User_id, User_name, Age, Joining_date, Gender
FROM user
WHERE age NOT IN (25, 39, 49, 58, 72);

SELECT user_id, user_Name, age, gender
FROM user
WHERE user_name LIKE 'S%';

SELECT user_id, user_Name, age, gender
FROM user
WHERE user_name LIKE '%r';

SELECT user_id, user_Name, age, gender
FROM user
WHERE user_name LIKE '%h%';

SELECT user_id, user_Name, age, gender
FROM user
WHERE user_name LIKE 'S___a'

SELECT user_id FROM user
union all
SELECT user_id FROM room;

LAB 7

SELECT AVG(age) as avg_age, MAX(age) as max_age, MIN(age) as min_age, count(user_id) as total_user 
FROM user;

SELECT UCASE(send_by),LCASE(send_by),LENGTH(messege_id)
FROM messege
WHERE room_id = 106;

SELECT DISTINCT send_by
FROM messege;

LAB 8

SELECT user.User_id, user.User_name
FROM user
INNER JOIN room ON user.User_id = room.User_id;

SELECT user.User_id, user.User_name
FROM user
INNER JOIN room ON user.User_id = room.User_id
WHERE user.User_name = 'Saika';

SELECT user.User_id, user.User_name, user.Gender,messege.Messege_id,messege.Send_by, room.Room_id
FROM user
INNER JOIN room ON user.User_id = room.User_id
INNER JOIN messege ON messege.Room_id = room.Room_id;
