SELECT first_name, last_name
FROM actor
WHERE first_name in ('Nick', 'Ed', 'Jennifer');

SELECT last_name
FROM actor
WHERE first_name in ('Nick', 'Ed', 'Jennifer');

SELECT *
FROM address;

SELECT district, phone
FROM address
ORDER BY district DESC;

SELECT f.film_id, f.title, i.inventory_id
FROM film f
JOIN inventory i on f.film_id = i.film_id;

SELECT * FROM inventory LIMIT 5;
SELECT * FROM rental LIMIT 5;

SELECT r.rental_id, r.rental_date, p.payment_id
FROM rental r
JOIN payment p on r.rental_id = p.rental_id
ORDER BY p.amount DESC
LIMIT 10;

SELECT *
FROM actor
WHERE actor_id is NULL;

SELECT count(*)
FROM film
WHERE film_id is not NULL;

SELECT sum(amount) as sum_amt
FROM payment;

SELECT max(amount) as max_amount, min(amount) as min_amount
FROM payment;
