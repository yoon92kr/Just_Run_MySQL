-- delete, drop, truncate
-- 각 질의어가 시행하는 결과를 생각해야한다.

/*
use cookdb;
create table bigtbl1
select * from employees.employees;

use cookdb;
create table bigtbl2
select * from employees.employees;

use cookdb;
create table bigtbl3
select * from employees.employees;
*/


/*
delete from bigtbl1;
# 테이블의 구조를 유지한 채, 튜플들만 삭제한다 (데이터 복구가 가능하다)
truncate table bigtbl2;
# 테이블의 필드만 유지한 채, 모두 삭제한다 (데이터 복구가 불가능하다)
drop table bigtbl3;
# 테이블 전체를 삭제한다 (데이터 복구가 불가능하다)
*/