-- 왼쪽/오른쪽 외부 조인(3개 테이블)
-- 동아리를 기준으로 가입학생이 없는 동아리를 모두 view

use cookdb;
select 
C.clubname,
C.roomno,
S.stdname,
S.addr

from stdtbl S
left outer join stdclubtbl SC
on S.stdname = SC.stdname
right outer join clubtbl C
on SC.clubname = C.clubname
order by C.clubname;
