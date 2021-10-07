use cookdb;
-- 전화번호가 없는사람을 제외 한 뒤 출력

select 
username,
concat(mobile1, mobile2) as '전화번호'
from usertbl
where username not in  (select username from usertbl where mobile1 is null);
# 하위쿼리에 포함되지 않는 조건