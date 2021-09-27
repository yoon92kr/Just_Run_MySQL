drop procedure if exists errorProc;

delimiter //
create procedure errorProc()
begin 
declare continue handler for 1146 select '테이블이 없습니다' as '메세지';
select * from notable;
end //
delimiter ;

call errorProc();