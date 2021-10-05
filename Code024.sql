-- Ignore
-- 오류(예외)발생시 해당 구문을 무시한 채 나머지 구문을 시행하도록함

use cookdb;

insert ignore into membertbl values('khd', '강호동스', '미국');
# userid는 PK설정이 되어있으므로 중복을 허용하지 않는데, 이미 khd라는 값이 존재한다. 그러나 ignore 선선언이 되어있기 때문에
# 이를 무시한 채 다음구문을 정상적으로 실행한다
insert ignore into membertbl values('ysh', '윤상현', '대전');
insert ignore into membertbl values('yoon', 'ysh', 'daejeon');