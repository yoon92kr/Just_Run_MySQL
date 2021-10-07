use cookdb;
drop table if exists mytable;

create table mytable 
(id int auto_increment primary key, mdate datetime);

set @curdate = current_timestamp();

prepare myquery from 'insert into mytable values(null, ?)';
execute myquery using @curdate;

deallocate prepare myquery;

select * from mytable;