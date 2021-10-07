drop procedure if exists whileProc;
delimiter //
create procedure whileProc()
begin 
declare i int;
declare hap int;
set i = 1;
set hap = 0;

while (i <= 100) do
set hap = hap + i;
set i = i+1;
end while;

select hap as '1~100 을 더한 값';
end //
delimiter ;

call whileProc();