-- 1-
-- SELECT first_name, last_name 
-- FROM public.actor
-- WHERE first_name IN('Ed', 'Nick', 'Jennifer'); 

-- 2-
-- SELECT last_name
-- FROM actor
-- WHERE first_name IN('Ed', 'Nick', 'Jennifer'); 

-- 3-
-- SELECT * FROM address;

-- 4-
-- SELECT district, phone FROM address
-- ORDER BY phone DESC;

-- 5-
-- SELECT film.film_id, film.title, inventory.inventory_id
-- FROM film JOIN inventory
-- ON film.film_id = inventory.film_id;

-- 6-
-- SELECT * 
-- FROM inventory INNER JOIN rental
-- ON inventory.inventory_id = rental.inventory_id
-- LIMIT 5;

-- 7-
-- SELECT rental.rental_id, rental.rental_date, payment.payment_id
-- FROM rental JOIN payment 
-- ON rental.rental_id = payment.rental_id
-- ORDER BY payment.amount DESC
-- LIMIT 10;

-- 8-
-- SELECT * FROM actor
-- WHERE actor_id IS NULL;

-- 9-
-- SELECT * FROM actor
-- WHERE actor_id IS NOT NULL;

-- 10-
-- SELECT COUNT(*) FROM film;

-- 11-
-- SELECT SUM(amount) AS sum_amt FROM payment;

-- 12-
-- SELECT MAX(amount) AS Maximum, MIN(amount) AS Minumum FROM payment;





