use cookdb;

-- select avg(amount) as '평귱 구매 개수' from buytbl;

-- select userid, avg(amount) as '평균 구매 개수' from buytbl group by userid;

select addr as '지역', max(height) as '최대 키', min(height) as '최소 키' from usertbl group by addr;









