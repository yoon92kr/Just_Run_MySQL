-- on duplicate key update
-- 값이 없는 경우에는 insert, 값이 존재할 경우에는 update 시행

use cookdb;
insert into membertbl values ('khd', '강후덜', '미국')
on duplicate key update username = '강후덜', addr = '미국';
# 기존에 pk가 존재 할 경우 해당 튜플을 업데이트 시행

insert into membertbl values ('djm', '동짜몽', '미국')
on duplicate key update username = '동짜몽', addr = '미국';
# 기존에 pk가 없을 경우 해당 튜플을 insert