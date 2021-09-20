-- 윈도우함수 
-- row_number() 번호
-- over(순위매길 순서) 순위 지정
use cookdb;

/*
select row_number() over(order by height desc),
username,
addr,
height

from
usertbl;
# height를 내림순서로 정렬을 하여 row_number을 통해 순서를 순차적으로 나열하며 username, addr, height 필드를 반환
*/

/*
select row_number() over(order by height desc, username) "키 큰 순위",
username,
addr,
height

from
usertbl;
# height를 내림차순으로 정렬하고 "키큰순위"에 번호를 순차적으로 부여하며 username, addr, height를 반한하되 키가 중복일 경우 2순위 정렬인 username을 오름차순으로 정렬
*/


select addr,
row_number() over(partition by addr order by height desc, username) "지역 별 키큰 순위",
username,
height

from
usertbl;
# partition by 를 통해 중복된 addr 필드별로 파티션을 나누고, height 필드를 기준으로 내림차순을 진행한 뒤 rou_number을 통해 순차적으로(파티션 별) 번호를 부여한다
