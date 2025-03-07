soru 1. 
select first_name, last_name from actor
where first_name IN ('Nick', 'Ed', 'Jennifer');
soru 2.
select last_name from actor
where first_name IN ('Nick', 'Ed', 'Jennifer');
soru 3.
select * from address;
soru 4.
select district, phone from address
order by district desc, phone desc;
soru 5.
SELECT f.film_id, f.title, i.inventory_id  
FROM film f  
JOIN inventory i ON f.film_id = i.film_id;
soru 6.
SELECT *  
FROM inventory i  
JOIN rental r ON i.inventory_id = r.inventory_id  
LIMIT 5;
soru 7.
SELECT r.rental_id, r.rental_date, p.payment_id  
FROM rental r  
JOIN payment p ON r.rental_id = p.rental_id  
ORDER BY p.amount DESC
LIMIT 10;
soru 8.
select * from actor where actor_id = NULL;
select * from actor where actor_id is NULL;
soru 9.
SELECT *  
FROM actor  
WHERE actor_id IS not NULL;
soru 10.
SELECT COUNT(*)  
FROM film;
soru 11.
SELECT SUM(amount) AS sum_amt  
FROM payment;
soru 12.
SELECT MIN (amount), MAX (amount) FROM payment;


