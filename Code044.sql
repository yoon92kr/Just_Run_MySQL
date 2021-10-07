select repeat('문자',3);
-- 문자, 반복횟수 선언

select replace('IT 문자 MySQL','문자','윤상현');
-- 문자열, 적용 문자열, 변경 문자열

select reverse('Yoon상현');
# 문자열의 순서를 거꾸로 반환

select concat('윤',space(5),'상현');
-- space(길이) 선언
# space 길이만큼 공백 입력

select substring('대한민국만세',3,2);
-- substring(시작 index, 길이)

select substring_index('www.mysql.com','.',2);
-- substring_index(문자열, 구분자, index 기준점) 선언, 기준점 까지를 반환
