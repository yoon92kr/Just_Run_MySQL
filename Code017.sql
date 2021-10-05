-- IN (OR _ 논리합)

select emp_no, first_name from employees.employees where emp_no = 10030 or emp_no =10035 or emp_no = 10040;
# employees 테이블의 emp_no 필드의 튜플이 10030 또는 10035 또는 10040 을 충족하는 튜플의 emp_no, first_name을 반환

select emp_no, first_name from employees.employees where emp_no in(10030,10035,10040);
# 하위쿼리 중 포함하는(True)의 튜플이 있는지를 확인 후 반환
