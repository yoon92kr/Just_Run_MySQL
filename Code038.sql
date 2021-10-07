-- prepare 문과 execute
-- execute로 실행될때 로컬변수 myvar1이 limit 의 ? 에 대입된다.

use cookdb;

set @myvar1 = 3;

prepare myquery
from 'select username, height from usertbl order by height limit ?';

execute myquery using  @myvar1;
