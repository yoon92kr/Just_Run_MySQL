use cookdb;
-- 상호조인(카티션곱) 

select *
from buytbl
cross join usertbl;

use employees;
select count(*) as '튜플의 갯수'
from employees
cross join titles;