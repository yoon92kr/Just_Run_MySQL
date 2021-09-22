select abs(-100);
# 절댓값

select ceiling(4.7);
# 올림
select floor(4.7);
# 내림
select round(4.7);
# 반올림

select conv('AA', 16,10);
-- conv(숫자, 원래진수,변환할진수)

select degrees(PI());
# 60분법 (360도) pi(3.14)를 넣게됬을경우 180이 출력된다and

select radians(180);
# 호도법, 180도를 넣었을경우 3.14가 출력