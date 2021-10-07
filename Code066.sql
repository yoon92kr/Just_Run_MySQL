drop procedure if exists whileProc2;
delimiter //
create procedure whileProc2()
begin 
declare i int;
declare hap int;
set i = 1;
set hap = 0;

mywhile : while (i <= 100) do
if (i%7 = 0) then 
set i = i+1;
iterate mywhile;
end if;

set hap = hap + i;
if (hap > 1000) then
leave mywhile;
end if;

set i = i+1;

end while;

select hap as '1~100 중 7의배수를 제외한 값들을 더한 결과';
end //
delimiter ;

call whileProc2();