use cookdb;

select 
dense_rank() over(order by height desc) "키 큰 순위",
username,
addr,
height

from
usertbl;
# 비교연산 시 동일값이 있을경우 같은 index를 지정
# ex) 1등 2등 3등 3등 4등


/*
select
rank() over(order by height desc) "키 큰 순위",
username,
addr,
height
from 
usertbl;
# 비교연산 시 동일값이 있을 경우 같은 index를 지정해주며, 암묵적으로 순차진행을 통해 다음 index에는 그것을 매김
# ex) 1등 2등 3등 3등 5등
*/