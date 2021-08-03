1 select count(*) from world.country;

2 select distinct Continent, count(*) as quantidade
from world.country
group by Continent;

3 select distinct Continent as Nome, count(*) as quantidade
from world.country
group by Continent 
order by Continent ASC;

4 select distinct Continent, count(*) as quantidade
from world.country
group by Continent
having count(*) > 50;

5 select max(SurfaceArea) from world.country;

6 select min(SurfaceArea) from world.country;

7 select avg(SurfaceArea) from world.country;

8 select avg(SurfaceArea) from world.country
where Continent like "Europe";

9 select Continent, avg(SurfaceArea) as media from world.country
group by Continent;

10 select Continent, avg(SurfaceArea) as media from world.country
group by Continent
order by media DESC;

11 select Continent, max(SurfaceArea) from world.country
group by Continent;

12 select Continent, max(SurfaceArea) maior from world.country
group by Continent
order by maior DESC;

13 select Name, count(Language) as totalIdioma from world.country
left join world.countrylanguage
on country.Code = countrylanguage.CountryCode
group by Name;

14 select Name, count(Language) as totalIdioma from world.country
left join world.countrylanguage
on country.Code = countrylanguage.CountryCode
group by Name
having count(Language) > 10;

15 select country.Name, count(city.Name) from world.country
left join world.city
on country.Code = city.CountryCode
group by country.Name;

16 select country.Name, avg(city.Population) from world.country
left join world.city
on country.Code = city.CountryCode
group by country.Name;

17 select country.Name, avg(city.Population) as mediaPop from world.country
right join world.city
on country.Code = city.CountryCode
group by country.Name
order by mediaPop ASC;

18 select country.Name, avg(city.Population) as mediaPop from world.country
right join world.city
on country.Code = city.CountryCode
group by country.Name
having avg(city.Population) > 70000
order by mediaPop ASC;

19 select sum(amount) from sakila.payment;

20 select avg(amount) from sakila.payment;

21 select customer.customer_id, customer.first_name, customer.last_name, sum(amount)
from sakila.customer
inner join sakila.payment 
on customer.customer_id = payment.customer_id
group by customer.customer_id;

22 select customer.customer_id, customer.first_name, customer.last_name, sum(amount)
from sakila.customer
inner join sakila.payment 
on customer.customer_id = payment.customer_id
group by customer.customer_id
order by customer.first_name, customer.last_name ASC;

23 select customer.customer_id, customer.first_name, customer.last_name, sum(amount) as soma
from sakila.customer
inner join sakila.payment 
on customer.customer_id = payment.customer_id
group by customer.customer_id
having sum(amount) > 100
order by soma ASC;

24 select staff.staff_id, staff.first_name, staff.last_name, count(payment.staff_id)
from sakila.staff
inner join sakila.payment 
on staff.staff_id = payment.customer_id
group by staff.staff_id;

25 select staff.staff_id, staff.first_name, staff.last_name, count(payment.staff_id)
from sakila.staff
inner join sakila.payment 
on staff.staff_id = payment.customer_id
where payment_date between '2005-05-25' and '2005-08-23'
group by staff.staff_id;

26 select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.film_id)
from sakila.actor
inner join sakila.film_actor
on actor.actor_id = film_actor.actor_id
group by actor.actor_id;

27 select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.film_id) as total
from sakila.actor
inner join sakila.film_actor
on actor.actor_id = film_actor.actor_id
group by actor.actor_id
order by total asc;

28 select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.film_id)
from sakila.actor
inner join sakila.film_actor
on actor.actor_id = film_actor.actor_id
where actor.actor_id = 100
group by actor.actor_id;

29 select category.name, count(film_category.film_id)
from sakila.category
left join sakila.film_category
on category.category_id = film_category.category_id
group by category.name;
