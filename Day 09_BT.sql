--ex01
Select 
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
  SUM(CASE WHEN device_type IN ('phone', 'tablet') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership;
-ex02
SELECT
    *,
    IF(x + y > z AND x + z > y AND y + z > x, 'Yes', 'No') AS triangle
FROM Triangle;
--ex03
select round(1.0*sum(
       case when call_category is null or call_category = 'n/a' then 1 else 0 end)/count(*)*100,1) 
       as call_percentage
from callers;
--ex04
elect name from customer
where referee_id != 2 or referee_id is null


