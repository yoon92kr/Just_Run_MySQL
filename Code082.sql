SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
/* 
다른 사용자의 작업이 완료된 데이터만 조회하거나 변경할 수 있다.
다른 사용자가 변경 중이라면 SELECT를 포함한 어떤 작업도 할 수 없고, 대기 하다가 다른 사용자가 비로소 작업이 완료 되면 변경된 결과로 데이터를 조회 하거나 변경 작업이 진행된다.
*/

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
/*
트랜잭션이 완료되지 않은 데이터도 조회 가능하다.
다른 세션에서 해당 데이터가 UPDATE중이어도 세션2는 대기 없이 SELECT 명령이 실행되는 대신
트랜잭션 내에서 UPDATE작업이 완료되었다면 아직 트랜잭션이 완료되지 않았다고 하더라도 그 당시의 데이터가 출력 된다. (데이터의 정확도는 낮지만 대기 없이 빠른 속도로 조회됨 )
*/

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
/*
트랜잭션 내에서 SELECT 된 데이터는 내부적으로 LOCK이 설정 되어 다른 세션에서 SELECT는 가능하지만 UPDATE나 DELETE해야 할 경우 대기 상태가 된다. 하지만 INSERT 작업은 언제든지 수행할 수 있고 그 결과는 모든 트랜잭션에서 바로 확인 가능하다.
*/

SET TRANSACTION ISOLATION LEVEL READ COMMITTED SNAPSHOT;
/*
ORACLE DB의 기본 트랜잭션 모드와 매우 유사하다.
트랜잭션 중에 변경된 정보는 다른 사용자가 변경된 내용이 조회 되지 않고 별도의 대기 현상도 없기 때문이다.
READ COMMITTED SNAPSHOP 격리 수준은 데이터베이스 시스템 전체에 적용 하는 것이 아니라 생성한 데이터베이스 단위로 변경해야 한다. 만약 변경 하고자 하는 데이터베이스에 접속된 사용자가 있다면 접속이 중단 될 수 있도록 단일 사용자 모드에서 변경 후 속성을 변경하여야 한다.
READ COMMITTED SNAPSHOP 격리 수준의 변경은 데이터베이스의 속성 정보에서 변경 가능 하지만 쿼리 창에서 명령어를 실행할 수도 있다.
*/

SET TRANSACTION ISOLATION LEVEL READ SNAPSHOT;
/*
처음 조회된 데이터가 다른 세션에서 이미 변경 또는 삭제 처리가 되고 트랜잭션이 완료되었다고 하더라도 다시 조회 하였을 경우 동일하게 데이터가 조회되는 특성이 있다. 하지만 이 정보를 변경 할 경우에는 “업데이트 충돌로 인해 스냅숏 격리 트랜잭션이 중단 되었습니다”라는 메시지와 함께 오류가 발생된다. SNAPSHOP 격리 수준은 데이터베이스 시스템 전체에 적용 하는 것이 아니라 생성한 데이터베이스 단위로 변경해야 한다. 만약 변경 하고자 하는 데이터베이스에 접속된 사용자가 있다면 접속을 중단할 수 있도록 단일 사용자 모드에서 변경 후 속성을 변경하여야 한다.
*/

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
/*
SERIALIZABLE은 가장 강력한 격리수준을 갖고 있으며,
한 세션에서 SELECT 된 데이터는 다른 세션에서 SELECT 할 수는 있지만 UPDATE, DELETE 뿐만 아니라 관련된 키 값의 INSERT작업을 할 경우 대기가 발생된다.
(현 세션과 관련 없는 데이터는 아무런 문제없이 SELECT, INSERT, UPDATE, DELETE 등 모든 작업이 정상적으로 수행된다.)
*/
