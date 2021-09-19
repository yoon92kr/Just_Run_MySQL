-- delete DML 질의어

use cookdb;

select * from testtbl4 where fname = 'aamer';
# testtbl4 테이블의 fname이 aamer인 튜플을 확인

delete 
from testtbl4
where fname = 'aamer'
limit 3;
# 상위 3개의 튜플 삭제 선언, 만약 where 조건에 충족하는 모든 튜플을 삭제하고자 한다면 limit을 제외한 채 선언

select * from testtbl4 where fname = 'aamer';
# 삭제가 되었는지 한번더 확인