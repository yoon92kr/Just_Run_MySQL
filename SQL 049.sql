select user();
-- 현재 사용자를 반환

select database();
-- 현재 사용하는 스키마를 반환

select found_rows();
-- select 를 사용할때 선택된 총 튜플의 갯수를 정수로 반환

select row_count();
-- [update, delete, insert] 명령어로 변경된 튜플의 갯수를 정수로 반환

select sleep(5);
-- 쿼리를 해당 정수만큼 멈춘 뒤 실행