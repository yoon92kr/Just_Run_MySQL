use cookdb;

select 
U.userid,
U.username,
B.prodname,
U.addr,
concat(U.mobile1, U.mobile2) as '연락처'

from buytbl B
right outer join usertbl U
on U.userid = B.userid
where B.prodname is NULL
order by u.userid;