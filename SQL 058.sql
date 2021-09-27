set global log_bin_trust_function_creators = 1;
-- 스토어드 function을 생성하기 위해서는 시스템 설정을 변경해주어야 한다. 사용 후 다시 0(false)로 변경할것
-- function은 select 문을 통해 호출가능하다
use cookdb;
delimiter //

create function sumtest(
value1 int,		# 매개 변수 자료형 설정
value2 int)
returns int		# 리턴 자료형 선언

begin
return value1 + value2;		# 리턴할 처리문 선언
end //

delimiter ;

select sumtest(100, 200);
