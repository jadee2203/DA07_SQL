--ex01
select name from students
where marks>75
order by right(name,3), id 
--ex02
select user_id, 
concat(upper(left(name,1)),lower(substring(name,2))) as name
from Users 
order by user_id
--ex03
select manufacturer,
concat('$', round(sum(total_sales)/1000000,0), ' million') as sale
from pharmacy_sales 
group by manufacturer
order by sum(total_sales) desc, manufacturer;
--ex04
select EXTRACT(month from submit_date) as mth,
product_id, ROUND(AVG(stars),2) as avg_stars
from reviews
GROUP BY EXTRACT(month from submit_date), product_id
ORDER BY mth, product_id
--ex05
SELECT sender_id, 
count(message_id) as message_count
FROM messages
where EXTRACT(month from sent_date)=8
and EXTRACT(year from sent_date)=2022
GROUP BY sender_id
ORDER BY message_count
--ex06
select tweet_id  from Tweets
where length (content)>15
--ex08
select count(first_name) as number_of_employee
from employees
where (extract (month from joining_date) between 1 and 7)
and extract(year from joining_date)=2022
--ex09
select position ('a' in first_name)  as position
from worker
where first_name= 'Amitah'
--ex10
select substring(title, length(winery)+2,4)
from winemag_p2
where country='Macedonia'
