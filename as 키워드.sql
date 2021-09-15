use cookdb;
# as 키워드, 필드를 일시적으로 변환하여 반환

-- select userid as'사용자 아이디', sum(amount) as '총 구매 개수' from buytbl group by userid;

select userid as'사용자 아이디', sum(amount*price) as '총 구매 가격' from buytbl group by userid;