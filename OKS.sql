
-- droping tables 

drop table events;
drop table players;
drop table funds;
drop table alumni;
drop table current_students;
drop table students;
-- lab 2
-- creating tables

create table students(
	roll number(10) primary key,
	s_name varchar2(20) not null,
	batch varchar2(4) not null,
	dept_name varchar2(10) not null
);
create table current_students(
	student_id number(5) primary key,
	study_year number(1),
	roll number(10),
	foreign key(roll) references students(roll)
);
create table alumni(
	alumni_id number(10) primary key,
	occupation varchar2(20) not null,
	a_address varchar2(20) not null,
	phone_no varchar2(12) not null,
	roll number(10),
	foreign key(roll) references students(roll)
);
create table funds(
	account_no varchar2(15),
	balance int,
	alumni_id number(10),
	foreign key(alumni_id) references alumni(alumni_id) 
);

create table players(
	player_id number(4) primary key,
	sports_name varchar2(20) not null,
	student_id number(5),
	foreign key(student_id) references current_students(student_id)
);
create table events(
	event_date date,
    event_name varchar2(20) not null,
	student_id number(5),
	foreign key(student_id) references current_students(student_id)
);

-- describing table

Describe students;
Describe current_students;
Describe alumni;
Describe funds;
Describe events;
Describe players;

-- data insersion 

-- insert on students table
insert into students(roll,s_name,batch,dept_name) values(1807001,'Mahin','2k18','CSE');
insert into students(roll,s_name,batch,dept_name) values(1807003,'Rupok','2k18','CSE');
insert into students(roll,s_name,batch,dept_name) values(1807081,'Parvej','2k18','CSE');
insert into students(roll,s_name,batch,dept_name) values(1807088,'Arnob','2k18','CSE');
insert into students(roll,s_name,batch,dept_name) values(1807082,'Shoriful','2k18','CSE');
insert into students(roll,s_name,batch,dept_name) values(1707081,'Munna','2k17','CSE');
insert into students(roll,s_name,batch,dept_name) values(1707083,'Mustafiz','2k17','CSE');
insert into students(roll,s_name,batch,dept_name) values(1807072,'Emon','2k18','CSE');
insert into students(roll,s_name,batch,dept_name) values(1707002,'Opi','2k17','CSE');
insert into students(roll,s_name,batch,dept_name) values(1801054,'Huda','2k18','CE');
insert into students(roll,s_name,batch,dept_name) values(1701001,'Shihab','2k17','CE');
insert into students(roll,s_name,batch,dept_name) values(1829003,'mahbub','2k18','ChE');
insert into students(roll,s_name,batch,dept_name) values(1607048,'Faisal','2k16','CSE');
insert into students(roll,s_name,batch,dept_name) values(1607043,'Shuvo','2k16','CSE');
insert into students(roll,s_name,batch,dept_name) values(1801068,'Rafi','2k18','CE');
insert into students(roll,s_name,batch,dept_name) values(1831015,'Tahmid','2k18','MTE');
insert into students(roll,s_name,batch,dept_name) values(1821011,'Reyan','2k18','TE');
insert into students(roll,s_name,batch,dept_name) values(1607081,'Nazmul','2k16','CSE');
insert into students(roll,s_name,batch,dept_name) values(1907081,'Bijoy','2k19','CSE');
insert into students(roll,s_name,batch,dept_name) values(1907082,'Mahmud','2k18','CSE');
insert into students(roll,s_name,batch,dept_name) values(1907088,'Shovon','2k19','CSE');
insert into students(roll,s_name,batch,dept_name) values(1507001,'Rafi','2k15','CSE');
insert into students(roll,s_name,batch,dept_name) values(1507002,'Rifat','2k15','CSE');

--insert on current_students table
insert into current_students(student_id,study_year,roll) values(1,3,1807081);
insert into current_students(student_id,study_year,roll) values(2,3,1807082);
insert into current_students(student_id,study_year,roll) values(3,3,1807081);
insert into current_students(student_id,study_year,roll) values(4,3,1807072);
insert into current_students(student_id,study_year,roll) values(5,3,1807001);
insert into current_students(student_id,study_year,roll) values(6,3,1807088);
insert into current_students(student_id,study_year,roll) values(7,4,1707081);
insert into current_students(student_id,study_year,roll) values(8,3,1821011);
insert into current_students(student_id,study_year,roll) values(9,4,1707083);
insert into current_students(student_id,study_year,roll) values(10,2,1907082);

-- insert on alumni table
insert into alumni(alumni_id,occupation,a_address,phone_no,roll) values(1,'Software Engineer','Dhaka','01770757512',1607081);
insert into alumni(alumni_id,occupation,a_address,phone_no,roll) values(2,'Software Engineer','Bogura','01738429840',1607048);
insert into alumni(alumni_id,occupation,a_address,phone_no,roll) values(3,'Teacher','Rangpur','01954645645',1607043);
insert into alumni(alumni_id,occupation,a_address,phone_no,roll) values(4,'Tech Lead','Dhaka','01845345354',1507001);
insert into alumni(alumni_id,occupation,a_address,phone_no,roll) values(5,'GOVT Employee','Dhaka','01521320910',1507002);

-- insert on funds table
insert into funds(account_no,balance,alumni_id) values('acc1',2000,1);
insert into funds(account_no,balance,alumni_id) values('acc2',300,1);
insert into funds(account_no,balance,alumni_id) values('acc3',500,2);
insert into funds(account_no,balance,alumni_id) values('acc1',1000,2);
insert into funds(account_no,balance,alumni_id) values('acc4',5000,3);
insert into funds(account_no,balance,alumni_id) values('acc1',4000,4);
insert into funds(account_no,balance,alumni_id) values('acc2',3000,5);
insert into funds(account_no,balance,alumni_id) values('acc4',2000,5);
insert into funds(account_no,balance,alumni_id) values('acc4',2000,4);

-- insert on players table
insert into players(player_id,sports_name,student_id) values(1,'Football',1);
insert into players(player_id,sports_name,student_id) values(2,'Cricket',1);
insert into players(player_id,sports_name,student_id) values(3,'Football',4);
insert into players(player_id,sports_name,student_id) values(4,'Table Tennis',1);
insert into players(player_id,sports_name,student_id) values(5,'Football',5);
insert into players(player_id,sports_name,student_id) values(6,'Cricket',5);
insert into players(player_id,sports_name,student_id) values(7,'Cricket',6);
insert into players(player_id,sports_name,student_id) values(8,'Volleyball',5);
insert into players(player_id,sports_name,student_id) values(9,'Football',10);
insert into players(player_id,sports_name,student_id) values(11,'Football',4);
insert into players(player_id,sports_name,student_id) values(12,'Cricket',1);
insert into players(player_id,sports_name,student_id) values(13,'Football',2);
insert into players(player_id,sports_name,student_id) values(14,'Football',5);
insert into players(player_id,sports_name,student_id) values(15,'Football',6);
insert into players(player_id,sports_name,student_id) values(16,'Volleyball',2);
insert into players(player_id,sports_name,student_id) values(17,'Chess',3);
insert into players(player_id,sports_name,student_id) values(18,'Cards',4);
insert into players(player_id,sports_name,student_id) values(19,'Cards',5);
insert into players(player_id,sports_name,student_id) values(20,'Football',5);
insert into players(player_id,sports_name,student_id) values(22,'Cards',7);
insert into players(player_id,sports_name,student_id) values(23,'Cricket',10);
insert into players(player_id,sports_name,student_id) values(24,'Football',6);

--insert on events table
insert into events(event_date,event_name,student_id) values(TO_DATE('10/02/2022', 'DD/MM/YYYY'),'KCPL-2022',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('10/02/2022', 'DD/MM/YYYY'),'KCPL-2022',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('23/05/2022', 'DD/MM/YYYY'),'Cricket league-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',4);
insert into events(event_date,event_name,student_id) values(TO_DATE('10/02/2022', 'DD/MM/YYYY'),'KCPL-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('10/02/2022', 'DD/MM/YYYY'),'KCPL-2022',5);
insert into events(event_date,event_name,student_id) values(TO_DATE('10/02/2022', 'DD/MM/YYYY'),'KCPL-2022',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('23/05/2022', 'DD/MM/YYYY'),'Cricket league-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('23/05/2022', 'DD/MM/YYYY'),'Cricket league-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('23/05/2022', 'DD/MM/YYYY'),'Cricket league-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('23/05/2022', 'DD/MM/YYYY'),'Cricket league-2022',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('10/02/2022', 'DD/MM/YYYY'),'KCPL-2022',3);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('23/05/2022', 'DD/MM/YYYY'),'Cricket league-2022',5);
insert into events(event_date,event_name,student_id) values(TO_DATE('23/05/2022', 'DD/MM/YYYY'),'Cricket league-2022',3);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',3);
insert into events(event_date,event_name,student_id) values(TO_DATE('10/02/2022', 'DD/MM/YYYY'),'KCPL-2022',3);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',3);
insert into events(event_date,event_name,student_id) values(TO_DATE('10/02/2022', 'DD/MM/YYYY'),'KCPL-2022',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('09/11/2021', 'DD/MM/YYYY'),'KCPL-2021',3);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('09/11/2021', 'DD/MM/YYYY'),'KCPL-2021',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('09/11/2021', 'DD/MM/YYYY'),'KCPL-2021',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',3);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('09/11/2021', 'DD/MM/YYYY'),'KCPL-2021',2);
insert into events(event_date,event_name,student_id) values(TO_DATE('23/05/2022', 'DD/MM/YYYY'),'Cricket league-2022',4);
insert into events(event_date,event_name,student_id) values(TO_DATE('09/11/2021', 'DD/MM/YYYY'),'KCPL-2021',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('12/04/2022', 'DD/MM/YYYY'),'Indoor-2022',1);
insert into events(event_date,event_name,student_id) values(TO_DATE('09/11/2021', 'DD/MM/YYYY'),'KCPL-2021',4);
insert into events(event_date,event_name,student_id) values(TO_DATE('09/11/2021', 'DD/MM/YYYY'),'KCPL-2021',3);

-- queries
SELECT * from students;
SELECT * from current_students;
SELECT * from alumni;  
SELECT * from funds;  
SELECT * from events;  
SELECT * from players; 
delete from students where roll = '1907088';  
select * from students;
update students set batch='2k19' where roll = '1907082'; 
select * from students;

--Lab4

-- distinct queries

select distinct(dept_name) from students; 

--calculated field
select (balance/5) from funds;

-- between queries
select (balance/5) from funds WHERE balance BETWEEN 1000 AND 5000;

-- set member queries

select alumni_id from funds WHERE balance In(1000,2000,5000);

-- pattern matching queries

SELECT alumni_id 
from alumni
WHERE a_address LIKE '%Dhak%';

-- order by

select account_no
from funds
order by balance;

select *
from funds
order by balance,alumni_id;

-- group by

select balance , count(balance)
from funds
where balance>400
group by balance
order by count(balance);

-- descending order

select balance , count(balance)
from funds
where balance>400
group by balance
order by count(balance) desc;

--having

select balance , count(balance)
from funds
where balance>400
group by balance
having count(balance)>1;


-- lab 5 

-- nested query

select s_name, batch
from students
where roll in(
    SELECT roll 
    from alumni
    WHERE a_address LIKE '%Dhak%'
);

select s_name, batch
from students
where roll in(
    SELECT roll 
    from alumni
    WHERE a_address LIKE '%Bo%'
);

--union all query

select roll
from students
union all
select roll from alumni;

-- union

select roll
from students
union 
select roll from alumni;

--itersect query

select roll
from students
intersect
select roll from alumni;

--minus query

select roll
from students
minus
select roll from alumni;

--lab 6

-- join

select *
from students join alumni 
on students.roll=alumni.roll; 

select s_name
from students join alumni
using(roll);

--natural join

select students.s_name,alumni.a_address
from students join alumni
using(roll);

--left outer join query

select *
from students left outer join alumni
using(roll);

--right outer join query

select *
from students right outer join alumni
using(roll);

-- self join
 
select * 
from alumni  a join alumni b
on a.roll=b.roll;


--- LAB 7

-- max 
set serveroutput on

declare
    mx_bal funds.balance%type;

begin
    select max(balance) into mx_bal
    from funds;
    dbms_output.put_line('Max Balance: '||mx_bal);
end;
/

-- sum

set serveroutput on

declare
    tot_bal funds.balance%type;

begin
    select sum(balance) into tot_bal
    from funds;
    dbms_output.put_line('Max Balance: '||tot_bal);
end;
/


--IF ELS

set serveroutput on
declare
    tot_bal funds.balance%type;
    acc_no funds.account_no%type :='acc1';
    final_bal funds.balance%type;
begin
   select sum(balance) into tot_bal
   from funds
   where account_no =acc_no;

    IF tot_bal < 200  THEN
                final_bal := tot_bal;
    ELSIF tot_bal >= 200 and tot_bal <100   THEN
               final_bal :=  tot_bal + (tot_bal*0.25);
    ELSIF tot_bal >= 1000 and tot_bal <=2000 THEN
       final_bal :=  tot_bal + (tot_bal*0.4);
    ELSE
	    final_bal :=  tot_bal + (tot_bal*0.5); 
    END IF;
    DBMS_OUTPUT.PUT_LINE (acc_no || ' Total Balance: '||tot_bal||' Final Balance: '||ROUND(final_bal,2));
    EXCEPTION
         WHEN others THEN
	      DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/


-- date of a event
-- cursor

set serveroutput on
declare
    cursor event_cur is select event_date,student_id from events;
    event_record event_cur%Rowtype;
begin
    open event_cur;
       loop 
          fetch event_cur into event_record;
          exit when event_cur%Rowcount>5;
          DBMS_OUTPUT.PUT_LINE ('Event Date:' || event_record.event_date || ' Student ID ' || event_record.student_id );
        end loop;
    close event_cur;
end;
/

--Procedure 

CREATE OR REPLACE PROCEDURE add_fund (
  acc_no funds.account_no%TYPE,
  bal funds.balance%TYPE,
  almn_id funds.alumni_id%type
) IS
BEGIN
    INSERT INTO funds (account_no, balance, alumni_id)
    VALUES (acc_no,bal,almn_id);
    COMMIT;
END add_fund;
/
SHOW ERRORS

-- Function

CREATE OR REPLACE FUNCTION avg_balance RETURN NUMBER IS
avg_bal funds.balance%type;
BEGIN
    SELECT AVG(balance) INTO avg_bal
    FROM funds;
    RETURN avg_bal;
END;
/
SHOW ERRORS

--call function 

SET SERVEROUTPUT ON
BEGIN
    dbms_output.put_line('Average Balance: ' || avg_balance);
END;
/

--call procedure

select * from funds;

SET SERVEROUTPUT ON
BEGIN
    add_fund ('acc1',2000,4);
END;
/
SHOW ERRORS

select * from funds;


-- Trigger

-- function for batch

CREATE OR REPLACE FUNCTION get_digit(roll in number) RETURN number IS
digits number;

BEGIN
    digits:=floor(roll/100000);
    RETURN digits;
END;
/
SHOW ERRORS 

-- trigger
CREATE OR REPLACE TRIGGER add_btch BEFORE INSERT OR UPDATE ON
students
FOR EACH ROW
Declare
    ans varchar2(4);
    a varchar2(2) :='2K';
    b varchar2(2);
BEGIN
    b :=To_char(get_digit(:new.roll));
    ans :=a||b;
    :new.batch :=ans;
END;
/
SHOW ERRORS
select * from students;
commit;
insert into students (roll,s_name,dept_name) values(1807085,'Apon','CSE');
select * from students;

-- Save point and roll backs
savepoint cont_1;

insert into students (roll,s_name,dept_name) values(1707077,'Nafi','CSE');
select * from students;

-- roll back to cont_1 savepoint

rollback to cont_1;
select * from students;

--rollback to last commit
rollback;
select * from students;