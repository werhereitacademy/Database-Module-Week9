SELECT first_name, last_name
FROM actor
WHERE first_name IN ('Ahmet', 'Zeynep', 'Mehmet');

SELECT last_name
FROM actor
WHERE first_name IN ('Ahmet', 'Zeynep', 'Mehmet');

SELECT *
FROM address;

SELECT district, phone
FROM address
ORDER BY district DESC, phone DESC;

SELECT f.film_id, f.title, i.inventory_id
FROM film f
JOIN inventory i ON f.film_id = i.film_id;

SELECT *
FROM inventory i
JOIN rental r ON i.inventory_id = r.inventory_id
LIMIT 5;

SELECT r.rental_id, r.rental_date, p.payment_id
FROM rental r
JOIN payment p ON r.rental_id = p.rental_id
ORDER BY p.amount DESC
LIMIT 10;

SELECT *
FROM actor
WHERE actor_id IS NULL;

SELECT *
FROM actor
WHERE actor_id IS NOT NULL;

SELECT COUNT(*)
FROM film
WHERE film_id IS NOT NULL;

SELECT SUM(amount) AS sum_amt
FROM payment;

SELECT MAX(amount) AS max_amount, MIN(amount) AS min_amount
FROM payment;
