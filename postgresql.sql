-- question1
select first_name, last_name 
from actor 
where first_name in ('Nick', 'Ed' , 'Jennifer')
-- question2
select last_name 
from actor 
where first_name in ('Nick', 'Ed' , 'Jennifer')
-- question3
select * from address
-- question4
select district, phone from address
order by district desc, phone desc
--question5
select film.film_id, film.title, inventory.inventory_id from film
join inventory on film.film_id = inventory.film_id
--question6
select * from inventory,rental limit 5
--question7
select rental.rental_id, rental.rental_date, payment.payment_id
from rental 
join payment on rental.rental_id = payment.rental_id  
order by payment.amount desc 
limit 10;
--question8
select * from actor
where actor.actor_id is null
--question9
select * from actor
where actor.actor_id is not null
-- question10
select * from film
where title is not null 
--question11
select sum(amount) as sum_amount
from payment
--question11
select max(amount),min(amount)
from payment





