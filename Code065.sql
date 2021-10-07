use cookdb;

select 
stdname,
addr
from stdtbl

union

select 
clubname,
roomno
from clubtbl;