use cookdb;
select U.userid, U.username, sum(price * amount) as '총 구매액',
case
when (sum(price*amount) >= 1500) 
then '최우수 고객'

when (sum(price*amount) >= 1000) 
then '우수 고객'

when (sum(price*amount) >= 1)
then '일반 고객'

else '유령 고객'
end
as '고객 등급'


from buytbl B
right outer join usertbl U
on B.userid = U.userid
group by U.userid, U.username
order by sum(price * amount) desc;