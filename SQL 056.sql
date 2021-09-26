drop procedure if exists ifProc3;
/*
delimiter //
create procedure ifProc3()
begin
declare point int;
declare credit char(1);
set point = 77;

if point >= 90 then
set credit = 'A';
elseif point >= 80 then
set credit = 'B';
elseif point >= 70 then
set credit = 'C';
elseif point >= 60 then
set credit = 'D';
else 
set credit = 'F';
end if;
select 
concat('취득점수 :',point) as '점수',
concat('학점 :',credit) as '학점';
end //
delimiter ;
*/

-- case 선택문 사용시
delimiter //
create procedure ifProc3()
begin
declare point int;
declare credit char(1);
set point = 77;

case 
when point >= 90 then
set credit = 'A';

when point >= 80 then
set credit = 'B';

when point >= 70 then
set credit = 'C';

when point >= 60 then
set credit = 'D';

else 
set credit = 'F';

end case;
select 
concat('취득점수 :',point) as '점수',
concat('학점 :',credit) as '학점';
end //
delimiter ;

call ifProc3();
