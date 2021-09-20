-- cast 활용

use cookdb;

select cast('2020$12$12' as date);
select cast('2020/12/12' as date);
select cast('2020.12.12' as date);
select cast('20201212' as date);

select num, concat(cast(price as char),'x',cast(amount as char)) as '단가x수량', price*amount as '구매액' from buytbl;
# char 형에 자료크기를 선언해줘야하는가?