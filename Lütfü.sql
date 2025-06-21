--Show the first and last names of actors whose first names are Nick, Ed, or Jennifer.
SELECT first_name, last_name 
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer');

--Show only the last name of actors whose first names are Ed, Nick, or Jennifer.
SELECT last_name 
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer');

--Show all details from the address table.
SELECT * 
FROM address;

--Display district and phone from the address table, sorted in descending order.
SELECT district, phone 
FROM address
ORDER BY district DESC;

--Using film_id from the film and inventory tables, show film_id, title from the film table, and inventory_id from the inventory table.
SELECT f.film_id, f.title, i.inventory_id
FROM film f
JOIN inventory i ON f.film_id = i.film_id
ORDER BY f.film_id ASC;

--Show the first 5 rows consisting of the inventory and rental tables.
SELECT * 
FROM inventory i
JOIN rental r ON i.inventory_id = r.inventory_id
LIMIT 5;

--Show the first 10 rows consisting of rental_id, rental_date, and payment_id from the rental and payment tables, ordered by amount in descending order.
SELECT r.rental_id, r.rental_date, p.payment_id
FROM rental r
JOIN payment p ON r.rental_id = p.rental_id
ORDER BY p.amount DESC
LIMIT 10;

--Show all details of rows where actor_id is empty (NULL) in the actor table.
SELECT * 
FROM actor
WHERE actor_id IS NULL;

--Show all details of rows in the actor table where actor_id is not empty (NOT NULL).
SELECT * 
FROM actor
WHERE actor_id IS NOT NULL;

--Find the number of non-empty rows in the film table.
SELECT COUNT(*) 
FROM film
WHERE film_id IS NOT NULL;

--Show the total amount from the payment table as the output header sum_amt.
SELECT SUM(amount) AS sum_amt
FROM payment;

--Show the maximum and minimum amount in the payment table.
SELECT 
    MAX(amount) AS max_amt, 
    MIN(amount) AS min_amt
FROM payment;
