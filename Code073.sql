-- 왼쪽/오른쪽 외부 조인(3개 테이블)
-- 학생명을 기준으로, 동아리가 없는 학생들을 view

use cookdb;
select 
S.stdname,
S.addr,
C.clubname,
C.roomno


from stdtbl S
left outer join stdclubtbl SC
on S.stdname = SC.stdname
left outer join clubtbl C
on SC.clubname = C.clubname
order by S.stdname
