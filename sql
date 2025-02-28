#1
select first_name, last_name from actor
where first_name in('Nick', 'Ed', 'Jennifer')

#2
select  last_name from actor
where first_name in('Nick', 'Ed', 'Jennifer')

#3
select * from address

#4
select * from address
order by district desc, phone desc

#5
SELECT film.film_id, title, inventory.inventory_id FROM public.film
join inventory
on inventory.film_id = film.film_id

#6
SELECT * from inventory limit 5
SELECT * from rental limit 5

#7
SELECT rental.rental_id, rental_date, payment.payment_id from rental 
join payment
on payment.customer_id = rental.customer_id
order by amount desc
limit 10

#8
select * from actor
where actor_id IS NULL

#9
select * from actor
where actor_id IS NOT NULL

#10
select count(film_id) as filmsayisi from film
where film_id  IS not  NULL

#11
select sum(amount) as  sum_amt from payment

#12
select max(amount) as max_amt, min(amount) as min_amt from payment
where amount >0
