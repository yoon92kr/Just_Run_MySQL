-- ANY 연산자


select emp_no, first_name
from employees.employees 
where emp_no <= any(select emp_no from employees.employees where emp_no < 10050);
# 하위쿼리의 조건이 다수(현 table 에서는 50개) 일 경우, All(and) 또는 ANY(or) 을 지정해 주어야 한다.

select emp_no, first_name
from employees.employees 
where emp_no <= all(select emp_no from employees.employees where emp_no < 10050);
# 하위쿼리의 조건이 다수(현 table 에서는 50개) 일 경우, All(and) 또는 ANY(or) 을 지정해 주어야 한다.
# 해당 하위쿼리에서는 조건이 (10001 ~ 10050) 이 주어졌고 emp_no가 이것보다 작거나 같은것 모두를 만족해야 하기 때문에 10001만 반환된다