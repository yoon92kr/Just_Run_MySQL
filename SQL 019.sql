-- Group by & Having 질의어

select userid as '사용자', sum(price*amount) as '총 구매액' 
from cookdb.buytbl 
group by userid;
# buytbl 테이블의 userid 별로 그룹을 지어(중복 별), 해당 그룹의 요소별 price 튜플과 amount를 곱한 값을 합해 '총 구매액'에 반환

-- 총 구매액(sum(price*amount))이 1000 이상인 튜플만 반환하고 싶을 경우

/* SELECT userID AS '사용자', SUM(price * amount) AS '총구매액’
FROM buyTBL
WHERE SUM(price * amount) > 1000
GROUP BY userID; */
# 에러 발생, where 조건문은 테이블 전체에 해당하는 조건만 대입가능하기때문에 group by로 그룹화된 요소들이 해당 조건으로 들어갈 수 없다.

select userid as '사용자', sum(price*amount) as '총 구매액'
from cookdb.buytbl
group by userid
having sum(price*amount) >= 1000
#order by sum(price*amount) desc;	# 결과값을 원하는 순서로 지정할 경우, desc 내림차순 / asc(default) 오름차순
# userid 필드로 그룹을 지은 뒤, having의 조건문을 충족하는 튜플의 userid, sum()을 반환