-- PIVOT TABLE
-- SUM, CASE 문을 사용한 방식

use cookdb;

select
uname,
sum(case when season = '봄' then amount end) as "봄",
sum(case when season = '여름' then amount end) as "여름",
sum(case when season = '가을' then amount end) as "가을",
sum(case when season = '겨울' then amount end) as "겨울"
# sum(case when 조건 then 필드명 end) 형식이며 조건을 만족하는 필드명을 sum 한다
from
pivottest

group by
uname;

