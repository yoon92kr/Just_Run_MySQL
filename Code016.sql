-- BETWEEN (AND_논리곱)
-- 두개의 지정 값 사이를 충족하는 boolean에 사용

select emp_no, first_name from employees.employees where emp_no <= 10050 and emp_no >= 10030;
# emp_no가 10030 이상, 10050 이하를 만족하는 튜플들의 emp_no, first_name 필드를 반환

select emp_no, first_name from employees.employees where emp_no between 10030 and 10050;
# 상기 질의어 대신 between을 사용가능

