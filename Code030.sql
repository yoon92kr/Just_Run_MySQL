-- CUME_DIST
-- 누적 분포치를 계산하여 퍼센트로 반환(0.1 ~ 1)

use cookdb;
select
addr,
username,
height,
cume_dist() over (partition by addr order by height desc) as "누적인원 백분율"
# partition을 통해 중복된 addr을 구분하고, height를 내림차순으로 정렬한 뒤 파티션 별 튜플이 갖는 분포치를 계산
# 만약 %르 출력하고자 한다면 *100을 해주면 된다

from
usertbl;