drop procedure if exists errorProc2;

delimiter //
create procedure errorProc2()
begin
declare continue handler for sqlexception
begin
show errors;
select '오류가 발생했습니다. 작업은 취소되었습니다' as '메세지';
rollback;
end;
insert into usertbl values('yjs','윤정수',1988,'서울',null,null,170,current_date());
end//
delimiter ;

call errorproc2();