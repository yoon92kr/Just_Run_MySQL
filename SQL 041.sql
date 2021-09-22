SELECT CASE 10
WHEN 1 THEN '일'
WHEN 5 THEN '오'
WHEN 10 THEN '십'
ELSE '모름'
END;
# case 뒤의 값이 아래의 when 조건과 만족하면 출력, 아닐경우 else 반환