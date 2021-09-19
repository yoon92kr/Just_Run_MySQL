use cookdb;
/*
select 
ntile(2) over(order by height desc) "class",
username,
addr,
height

from
usertbl;
# height를 내림차순으로 정렬 후, 전체 튜플을 2로 나누어 번호를 부여
*/

/*
select
ntile(4) over(order by height desc) "class",
username,
addr,
height

from 
usertbl;
# height를 내림차순으로 정렬 후, 전체 튜플을 4로 나누어 번호를 부여
*/