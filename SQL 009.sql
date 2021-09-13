/* use shopdb;
delimiter //
create procedure  mypro()
begin 
select * from membertbl where membername = '토마스';
select * from producttbl where productname = '냉장고';
end //
delimiter ; */

call myPro();