-- update 질의어 
-- DML 질의어로 튜플을 변경할때 사용, where 조건문을 사용하지 않을 경우 해당 필드의 모든 튜플이 변경된다

use cookdb;

update testtbl4
set lname = '없음'
where fname = 'kyoichi';
# fname이 kyoichi인 튜플의 lname 을 없음으로 변경

update buytbl
set price = price*1.5;
# price 필드의 모든 튜플을 1.5를 곱한 뒤 대입