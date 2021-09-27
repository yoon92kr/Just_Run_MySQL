use cookdb;

select
 A.emp as '부하직원',
 B.emp as '상관 이름',
 B.emptel as '상관 구내 번호'
 
 from emptbl A
 inner join emptbl B
 on A.manager = B.emp
 where A.emp = '우대리';