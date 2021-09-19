-- Auto_Increment 키워드
-- AI 지정시, 반드시 PK 또는 UNIQUE 를 선언해야 한다

use cookdb;
create table testtbl2(
id int auto_increment primary key,
username char(3),
age int);

alter table testtbl2 auto_increment = 100;
# Auto_increment 의 시작값을 100으로 재설정

insert into testtbl2 values(
null, '에디', 15
);

insert into testtbl2 values(
null, '포비', 12
);

insert into testtbl2 values(
1, '윤상현', 30
);
# id 값을 null이 아닌 명시할 경우, 중복이 아니면 입력이 가능하다

select * from testtbl2;