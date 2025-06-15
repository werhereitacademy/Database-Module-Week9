--Show the first and last names of actors whose first names are Nick, Ed, or Jennifer.
SELECT first_name, last_name 
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer')

--Show only the last name of actors whose first names are Ed, Nick, or Jennifer.
SELECT last_name 
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer')

--Show all details from the address table..
SELECT * FROM address

--Display district and phone from the address table, sorted in descending order.
SELECT district, phone 
FROM address
ORDER BY district DESC

--Using film_id from the film and inventory tables, show film_id, title from the film table, and inventory_id from the inventory table.
SELECT f.film_id, title, i.inventory_id
FROM film f
JOIN inventory i
ON f.film_id = i.film_id
ORDER BY f.film_id ASC

--Show the first 5 rows consisting of the inventory and rental tables.
SELECT *
FROM inventory i
JOIN rental r
ON i.inventory_id = r.inventory_id
LIMIT 5

--Show the first 10 rows consisting of rental_id, rental_date, and payment_id from the rental and payment tables, ordered by amount in descending order.
SELECT r.rental_id, rental_date, payment_id
FROM rental r
JOIN payment p
ON r.rental_id = p.rental_id
ORDER BY amount DESC
LIMIT 10

--Show all details of rows where actor_id is empty (NULL) in the actor table.
SELECT * 
FROM actor
WHERE actor_id IS NULL

--Show all details of rows in the actor table where actor_id is not empty (NOT NULL).
SELECT * FROM actor
WHERE actor_id IS NOT NULL
--Find the number of non-empty rows in the film table.
SELECT COUNT(*) FROM film

--Show the total amount from the payment table as the output header sum_amt.
SELECT SUM(amount) as sum_amt
FROM payment

--Show the maximum and minimum amount in the payment table.
SELECT 
	MIN(amount) as min_amt, 
	MAX(amount) as max_amt
FROM payment

