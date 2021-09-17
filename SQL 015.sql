-- 로컬변수
-- 선언 형식 
# SET @변수명 = 값 대입


use cookdb;

set @myvar1 = 5;
set @myvar2 = 3;
set @myvar3 = 4.25;
set @myvar4 = 'mc 이름 ==> ';

select @myvar1;
select @myvar2 + @myvar3;

select @myvar4, username from usertbl where height > 180;