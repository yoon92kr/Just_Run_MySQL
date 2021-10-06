use cookdb;
create table testtbl3(
id int auto_increment primary key,
username char(3),
age int);

alter table testtbl3 
auto_increment = 1000;
set @@auto_increment_increment = 3;	# 서버변수이기 때문에, 특정 테이블 명을 명시하지 않고 모든 서버에 적용한다

insert into testtbl3 values(null, '우디', 20), (null, '버즈', 18), (null, '제시', 19);