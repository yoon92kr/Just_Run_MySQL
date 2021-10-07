-- 문자열함수

select bin(31);
# 2진수 변환
select oct(31);
# 8진수 변환
select hex(31);
# 16진수 변환

select lpad('쿡북',5,'#');
-- 문자열, 길이, 채울문자 선언
# 왼쪽 빈 공간에 채울문자를 부족한 길이만큼 채움
select rpad('문자',5,'$');
# 오른쪽 빈 공간에 채울문자를 부족한 길이만큼 채움

select ltrim('  문자  ');
# 문자열 왼쪽의 스페이스바(아스키 32)을 제거
select rtrim('  문자  ');
# 문자열 오른쪽의 스페이스바(아스키 32)을 제거
select trim( '문자');
# 문자열 왼쪽, 오른쪽 스페이스바(아스키 32)을 제거
select trim(both 'z' from 'zzz문자zz');
-- [both 양쪽, leading 앞쪽, traling 뒷쪽] [제거할 문자] from [적용할 문자열] 선언
