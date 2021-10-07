use cookdb;

select *
from buytbl
inner join usertbl
on buytbl.userid = usertbl.userid
where buytbl.userid = 'kym';

select buytbl.userid, usertbl.username, prodname, addr, concat(mobile1, mobile2) as '연락처'
from buytbl
inner join usertbl
on buytbl.userid = usertbl.userid;
