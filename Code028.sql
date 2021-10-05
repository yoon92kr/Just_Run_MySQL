-- LEAD
-- LEAD(필드명, 비교할 다음행 위치, 비교할 행이 없을 경우 출력값)

use cookdb;
select
username,
addr,
height as "키",
height - lead(height,1,0) over(order by height desc) as "다음 사람 과 키 차이"
# 해당 튜플의 height 에서 다음 튜플(1)의 height를 뺀 값을 반환, 다음 튜플이 없다면 0을 반환(0)
from
usertbl;