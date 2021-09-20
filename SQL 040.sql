-- IF 삼항연산
-- IF(조건,참 처리문, 거짓 처리문)
select if(100>200, '참이네요', '거짓이네요');


-- IFNULL 연산
-- 매개변수1이 null이라면 매개변수2를 반환, 매개변수1이 null이 아니라면 매개변수1 반환
select ifnull(null, '널이네요');
select ifnull('값이있네요', '널이네요');

-- NULLIF 연산
-- 두 매개변수가 같으면 null, 다르면 첫번째 매개변수 반환
SELECT NULLIF(100, 100), NULLif(200, 100)