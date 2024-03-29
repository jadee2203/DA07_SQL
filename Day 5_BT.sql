--ex12
select class 
from Courses
group by class
having count(student)>=5
--ex11
select user_id, count(follower_id) as followers_count
from Followers
group by user_id
order by user_id asc
--ex10
select teacher_id , count(distinct subject_id) as cnt from teacher
group by teacher_id
--ex09
select * from Cinema
where id%2 =1 and description <> 'boring'
order by rating desc
--ex08
SELECT manufacturer, COUNT(drug) as drug_count, abs(SUM(cogs-total_sales)) as total_loss 
FROM pharmacy_sales
WHERE cogs>total_sales
group by manufacturer
ORDER BY total_loss DESC
--ex07
SELECT card_name, MAX(issued_amount) - MIN(issued_amount) 
AS difference
FROM monthly_cards_issued
group by card_name
ORDER BY difference DESC
--ex06
SELECT user_id, 
date(MAX(post_date))- date(MIN(post_date)) AS day_between 
FROM posts
where post_date>='2021-01-01' and post_date<'2022-01-01'
group by user_id
--ex05
SELECT candidate_id FROM candidates
where skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
having count(skill)=3
ORDER BY candidate_id ASC
--ex04
SELECT round(cast(SUM(item_count*order_occurrences)/SUM(order_occurrences)as decimal),1) 
as mean
FROM items_per_order
--ex02
select (count(city)- count(distinct city)) from station
--ex01
select city from station
where id%2=0
group by city
