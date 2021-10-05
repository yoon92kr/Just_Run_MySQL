-- First_value(A)
-- A 필드의 값중 가장 위에 있는 값을 반환

use cookdb;
select
addr,
username,
height as "키",
height - (first_value(height) over (partition by addr order by height desc)) as "지역 별 최대키와 차이"
# height를 내림차순으로 정렬하고, 파티션을 addr로 두었기 때문에 중복된 addr 필드의 heigth의 가장 첫번째 값(큰 값) 을 해당 튜플의 height와 뺀다


from
usertbl;
