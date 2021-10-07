use cookdb;

select b.userid, u.username, b.prodname, u.addr, concat(u.mobile1, u.mobile2) as'연락처'
# 테이블명이 아닌 아래 from, inner에서 무여한 별칭을 통한 명시가 가능하다
from buytbl B
inner join usertbl U
on b.userid = u.userid
where b.userid = 'khd';

select u.userid, u.username, b.prodname, u.addr, concat(u.mobile1, u.mobile2) as'연락처'

from usertbl u
inner join buytbl b
on u.userid = b.userid
where u.userid = 'khd'
order by u.userid;

# 기준과, join 테이블이 틀려도 동일 결과는 출력된다. 그러나 내부에서 처리되는 로직은 달라진다
