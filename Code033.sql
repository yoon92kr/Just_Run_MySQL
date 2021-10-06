use cookdb;

with test(userid, total)
as
(select userid, sum(price*amount)
from buytbl group by userid)

select * from test order by total desc;