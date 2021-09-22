sELECT DAYOFWEEK(CURDATE());
-- DAYOFWEEK( ) 함수는 요일(1: 일~7: 토) 반환 [mysql 에서는 1이 일요일 이다]
select MONTHNAME(CURDATE());
-- MONTHNAME( ) 함수는 월의 영문(January ~December) 반환
select DAYOFYEAR(CURDATE());
-- DAYOFYEAR( ) 함수는 1년 중 몇 번째 날(1~366)인지를 반환 
 
select last_daY('2021-01-01');
-- 입력한 월의 마지막 날짜를 반환
 
 select makedate(2020, 32);
-- 연도의 첫날부터 정수만큼 지난(일) 날짜를 반환

select maketime(12,11,10);
-- 정수를 순서별로 시, 분, 초로 변환하여 time 형식을 반환
