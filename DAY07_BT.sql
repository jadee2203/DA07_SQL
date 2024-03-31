--ex01
select name from students
where marks>75
order by right(name,3), id 
--ex02
select user_id, 
concat(upper(left(name,1)),lower(substring(name,2))) as name
from Users 
order by user_id
