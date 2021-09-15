use test_tbl;	#사용할 데이터베이스 명시
alter table buy		# 변경할 테이블 명시

-- add constraint foreign key (test_id) references member(test_id);


modify column test_id int(11) not null;		# modify column [변경할 컬럼명] [변경할 컬럼 타입]
# 컬럼(필드) 타입 변경하기 int(11) -> int(11) not null
