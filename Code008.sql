# use shopdb;
# create table deletedmembertbl
# (memberID char(8), memberName char(5), memberAddress char(20), deleteDate date);

/* delimiter //
create trigger trg_deletedmembertbl
after delete
on membertbl
for each row
begin
insert into deletedmembertbl
values(old.memberid, old.membername, old.memberaddress, curdate());
end //
delimiter ; */
use shopdb;
show triggers;