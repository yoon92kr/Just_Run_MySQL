select adddate('2020-01-01', interval 31 day);
-- adddate(날짜, interval 정수 유형[day,month, year..]) : 날짜에 정수를 유혀에 맞게 더함

select subdate('2020-01-01', interval 1 month);
-- subdate(날짜, interval 정수 유형[day,month, year..]) : 날짜에 정수를 유혀에 맞게 뺌

select addtime('2020-01-01 23:59:59', '0:0:1');
-- adddate(날짜, 시간) : 시간에 시간을 더함

select subtime('00:00:01', '0:0:1');
-- subdate(날짜(시간), 시간) : 시간에 시간을 뺌

SELECT YEAR(CURDATE()), MONTH(CURRENT_DATE()), DAYOFMONTH(CURRENT_DATE);
-- curdate() 또는 current_date() 는 동의어이며 현재의 년월일을 반환, curtime() 은 시분초를 반환
SELECT HOUR(CURTIME()), MINUTE(CURRENT_TIME()), SECOND(CURRENT_TIME), MICROSECOND(CURRENT_TIME);

SELECT DATE(NOW()), TIME(NOW());
-- now()는 앞의 키워드에 따른 반환을 해준다

SELECT DATEDIFF('2023-01-01', NOW());
-- datediff(날짜1, 날짜2) : 날짜1과 2의 차이를 반환
select TIMEDIFF('23:23:59', '12:11:10');
-- timediff(시간1, 시간2) : 시간1과 2의 차이를 반환
