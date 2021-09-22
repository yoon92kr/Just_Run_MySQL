use cookdb;
-- 3개의 테이블 내부 조인
select C.clubname, C.roomno, S.stdname, S.addr 
from stdtbl S
inner join stdclubtbl SC
on S.stdname = SC.stdname

inner join clubtbl C
on SC.clubname = C.clubname

order by C.clubname;

