set @json='{ "usertbl" :
 [
	{"name":"강호동", "height":182},
	{"name":"이휘재", "height":180},
	{"name":"남희석", "height":180},
	{"name":"박수홍", "height":183}
 ]
}';
select json_valid(@json) as json_valid;
-- 유효성을 검사, 유효한 경우 1 아닌경우 0 반환	
select json_search(@json, 'one', '남희석') as jaon_search;
-- 로컬변수에 VALUE 남희석의 위치 확인 [one 하나만, all 모두]
select json_extract(@json, '$.usertbl[2].name') as json_extract;
-- [2]인덱스의 name필드를 반환
select json_insert(@json, '$.usertbl[0].mDate', '2019-09-09') as json_insert;
-- [0]인덱스의 mDate 필드에 2019-09-09를 대입, 없을경우 생성
select json_replace(@json, '$.usertbl[0].name', '토마스') as json_replace;
-- [0]인덱스의 name 필드를 토마스로 변경
select json_remove(@json, '$.usertbl[0]') as json_remove;
-- [0]인덱스를 삭제