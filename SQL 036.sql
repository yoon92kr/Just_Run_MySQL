-- cast 형변환
use cookdb;

select cast(avg(amount) as signed integer) as '평균 구매 개수' from buytbl;
-- select convert(avg(amount),signed integer) as '평균 구매 개수' from buytbl;