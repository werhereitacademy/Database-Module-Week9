--1. Show the first and last names of actors with the names Nick, Ed and Jennifer as their first names.

SELECT first_name, last_name
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer');

--2. Show only the last name of the actor whose first names are Ed, Nick and Jennifer.

SELECT last_name
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer');

--3. Show all details of address table.

SELECT * 
FROM address;

--4. Show district and phone in descending order in the address table

SELECT district, phone
FROM address
ORDER BY district DESC, phone DESC;

--5. Using movie_id from movie and inventory table, show movie_id, title from Movie table and inventory_id from Inventory table.

SELECT f.film_id, f.title, i.inventory_id
FROM film f
INNER JOIN inventory i ON f.film_id = i.film_id;


--6. Show the first 5 rows consisting of inventory table and rental table.

SELECT *
FROM Inventory I
JOIN Rental ON i.inventory_id = Rental.inventory_id
LIMIT 5;

--7. Show the first 10 rows consisting of rental_id, rental_date, payment_id, sorted in descending order by amount, consisting of the Rental and Payment tables.

SELECT r.rental_id, r.rental_date, p.payment_id, p.amount 
FROM public.rental r 
INNER JOIN public.payment p ON r.rental_id = p.rental_id 
ORDER BY p.amount DESC NULLS LAST 
LIMIT 10;

--8. Show other details of the rows where actor_id is empty in the Actor table.

SELECT last_name, first_name 
FROM actor 
WHERE actor_id IS NULL;

--9. Show other details of the rows in the Actor table where actor_id is not empty.

SELECT last_name, first_name 
FROM actor 
WHERE actor_id IS NOT NULL

--10. Find the number of non-empty rows in the movie table.

SELECT COUNT(*)
FROM film
WHERE film_id IS NOT NULL

--11. Show the total amount from the payment table as output header sum_amt.

SELECT SUM(amount) AS sum_amt
FROM payment;

--12. Show the maximum and minimum amount in the payment table.

SELECT MAX(amount) AS max_amount ,MIN(amount) AS min_amount
FROM payment
