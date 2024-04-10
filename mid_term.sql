--Q1
select distinct min(replacement_cost)
from film;
--Q2
select count(replacement_cost),
case when replacement_cost < 20 then 'low'
end as category
from film
group by category;
--Q3
select title,
length,
c.name from film f
inner join film_category fc on f.film_id = fc.film_id
inner join category c on fc.category_id = c.category_id
where c.name in ('Drama','Sports')
order by length desc;
--Q4
select count(title),
c.name from film f
inner join film_category fc on f.film_id = fc.film_id
inner join category c on fc.category_id = c.category_id
group by c.name
order by count(title) desc;
--Q5
select a.first_name,
a.last_name, count(title)
from actor a 
inner join film_actor fa
on a.actor_id = fa.actor_id
inner join film f
on fa.film_id = f.film_id
group by a.first_name,
a.last_name
order by count(title) desc;
--Q6
select count(*)
from address a
left join customer c 
on c.address_id = a.address_id
where first_name is null;
--Q7
select city,
sum(amount)
from payment p
inner join customer c
on p.customer_id = c.customer_id
inner join address a
on c.address_id = a.address_id
inner join city ci
on a.city_id = ci.city_id
group by city
order by sum(amount) desc;
--Q8
select city,
country, sum(amount) from payment p
inner join customer c
on p.customer_id = c.customer_id
inner join address a
on c.address_id = a.address_id
inner join city ci
on a.city_id = ci.city_id
inner join country co
on ci.country_id = co.country_id
group by city, country
order by sum(amount) asc;



