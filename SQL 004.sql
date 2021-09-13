use shopdb;
select * from indextbl where first_name = 'mary';
# 필드의 모든 튜플을 검색하여 where 조건에 맞는 튜플을 설정한 필드를 반환, 
# 모든 튜플(현 예제에서는 500튜플)을 검색하기때문에 자료량이 방대해지면 메모리가 많이 소비된다.