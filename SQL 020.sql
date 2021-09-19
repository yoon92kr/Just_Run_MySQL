-- WITH RollUP (소계)

select num, groupname,  sum(price*amount) as '비용'
from cookdb.buytbl
group by groupname
with rollup;

# groupname으로 그룹화를 한 뒤, select 구문의 직계함수에 대한 rollup(소계)을 select 구문 마지막에 반환해준다