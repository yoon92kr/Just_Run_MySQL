drop procedure if exists ifProc;

delimiter ..
create procedure ifProc()
begin
declare var1 int;
set var1 = 10;

if var1 = 100 then
select '100 입니다' as '결과';
    
else 
select '100이 아닙니다' as '결과';
    
end if;
end ..
delimiter ;

call ifProc();