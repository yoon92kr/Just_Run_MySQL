-- 다른 테이블의 튜플을 삽입

use cookdb;
create table testtbl4(
id int,
fname varchar(50),
lname varchar(50));

insert into testtbl4 select emp_no, first_name, last_name from employees.employees;
# values 선언을 통해 튜플을 직접입력하는것이 아닌, select 선언을 통해 참고할 테이블의 필드명들을 명시

-- 간략화 한 선언
/*
create table testtbl4(
select 

emp_no,
first_name,
last_name 

from 
employees.employees);
*/

-- 간략화 한 선언에 필드명을 변환하고자 할 경우
/*
create table testtbl4(
select 

emp_no as id,
first_name as fname,
last_name as lname

from 
employees.employees);
*/