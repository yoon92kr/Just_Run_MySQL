-- 외부 조인
-- 조인 조건을 만족하지 않는 튜플까지 포함하여 출력
-- LEFT OUTER JOIN 은 왼쪽에있는 테이블이 기준이라는 의미이다

use cookdb;

select U.userid,
U.username, 
B.prodname, 
U.addr, 
concat(U.mobile1, U.mobile2) as '연락처'

from usertbl U # (Left 테이블)
left outer join buytbl B # (Right 테이블)
on  U.userid = B.userid
# usertbl이 기준(Left)이기 때문에 usertbl에는 존재하는 튜플이 buytbl에 없는 튜플이라면 null을 반환하여 반환
order by U.userid;
