use cookdb;

WITH TEMP_TB(userid, total)
AS
(SELECT userid, sum(price*amount)
FROM buytbl group by userid)

select * from TEMP_TB order by total desc;
