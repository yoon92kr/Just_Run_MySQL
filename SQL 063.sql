drop procedure if exists ifProc2;
use employees;

delimiter //
create procedure ifProc2()
begin
declare hireDates date;
declare curDates date;
declare days int;

select 
hire_date into hireDates
from employees.employees
where emp_no = 10001;

set curDates = current_date();
set days = datediff(curDates, hireDates);

if (days/365) >= 5 then
select concat('입사한지',days,'일이 지났습니다. 축하합니다!') as '메세지';

else
select concat('입사한지',days,'일 밖에 안됬습니다.') as '메세지';
end if;

end //
delimiter ;
call ifProc2();
