use cookdb;
-- 내부조인 , distnct 응용
select distinct u.userid, u.username, u.addr
from usertbl u
inner join buytbl b
on u.userid = b.userid
order by u.userid;


select *
-- 서브쿼리가 반환하는 결과값이 있는지를 확인한 뒤 있을경우 true, 없을경우 false
from usertbl u
where not exists ( #not을 붙일경우, 다른 값이 출력된다.
select *
from buytbl b
where u.userid = b.userid);