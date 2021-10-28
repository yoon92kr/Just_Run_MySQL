use sequencetest;

drop table if exists sequences;

create table sequences(
# 시퀀스의 역할을 하는 시퀀스명(이름)과, 시퀀스(카운트)의 튜플을 보관하는 테이블 생성
sequence_name varchar(20),
count_no int unsigned)
# unsigned : 음수를 사용하지 않고, 양수로 범위를 확대
engine = innodb;	
#사용 엔진 설정

DROP PROCEDURE IF EXISTS create_sequence;


DELIMITER //
create procedure create_sequence (in the_name text)	#파라미터 매개변수로 the_name를 수령, 자료형 text
modifies sql data	
#함수/프로시져가 데이터베이스에 저장된 튜플을 수정할 수 있다는 선언(DDL)
deterministic	
#비교 등 함수/프로시져 호출시 연산마다 함수/프로시져의 반환값이 변경될수 있기에 재호출할것인지(not deterministic)  고정할것인지(deterministic) 정의)

begin
delete from sequences where sequence_name = the_name;
insert into sequences values(the_name, 400);	
#오라클의 START WITH[시작 값]와 동일한 역할, 시작값을 지정
end//

DELIMITER ;


DROP FUNCTION IF EXISTS nextval;

DELIMITER //
CREATE FUNCTION nextval (the_name VARCHAR(20))
RETURNS BIGINT UNSIGNED	#반환할 데이터 타입 선언
MODIFIES SQL DATA
DETERMINISTIC
BEGIN
	DECLARE ret BIGINT UNSIGNED;	#지역변수 선언
	UPDATE sequences SET count_no = count_no + 1 WHERE sequence_name = the_name;
    set ret := (select count_no from sequences where sequence_name = the_name);
    RETURN ret;
END //

DELIMITER ;