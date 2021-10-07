use cookdb;
-- full outer join 과 같은 결과(mysql은 full미지원(left, right만 지원)
-- union 중복된 튜플은 배재
-- union all 중복된 튜플까지 출력

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

union

select 
S.stdname,
S.addr,
C.clubname,
C.roomno

from stdtbl S
left outer join stdclubtbl SC
on S.stdname = SC.stdname
right outer join clubtbl C
on SC.clubname = C.clubname;