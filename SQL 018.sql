-- like (equals_같다)

select emp_no, first_name from employees.employees where emp_no like '1002%';
# employees 테이블의 emp_no 튜플 중 1002로 시작하는 모든 튜플들의 emp_no, first_name 튜플을 반환

select emp_no, first_name from employees.employees where emp_no like '_____5';
# employees 테이블의 emp_no 튜플 중 여섯번째 자료가 5인 모든 튜플들의 emp_no, first_name 튜플을 반환