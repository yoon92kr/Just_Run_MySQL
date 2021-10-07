select ascii('a');
# 문자를 아스키 코드로 반환

select char(65);
# 아스키 코드를 문자로 반환

select bit_length('가');
# 할당된 문자의 비트 크기를 반환

select length('가');
# 할당된 문자의 바이트 수를 반환

select char_length('abc');
# 할당된 문자의 길이를 반환

select concat('안녕','하','세요',1);
# 문자열을 이어줌, 정수도 문자로 자동 형변환

select concat_ws(':)','hello','my','sql');
# 구분자와 함께 문자열을 이어준다_선언형식 concat_ws('구분자','문자열1'....);