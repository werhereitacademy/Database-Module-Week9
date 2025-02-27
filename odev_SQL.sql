-- Question 1

SELECT first_name,last_name
FROM actor
WHERE first_name IN ('Nick','Ed','Jennifer')

-- Question 2

SELECT last_name
FROM actor
WHERE first_name IN ('Nick','Ed','Jennifer')

-- Question 3

SELECT * 
FROM address

-- Question 4

SELECT district,phone
FROM address
ORDER BY district DESC

-- Question 5

SELECT film.film_id, film.title, inventory.inventory_id
FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id;

-- Question 6

SELECT *

FROM inventory,rental
LIMIT 5

-- Question 7 

SELECT rental.rental_id, rental.rental_date, payment.payment_id, payment.amount
FROM rental
INNER JOIN payment ON rental.rental_id = payment.rental_id
ORDER BY amount DESC
LIMIT 10

-- Question 8

SELECT *
FROM actor
WHERE actor_id IS NULL

-- Question 9

SELECT *
FROM actor
WHERE actor_id IS NOT NULL

-- Question 10

SELECT COUNT(*)
FROM  film
WHERE title IS NOT NULL

-- Question 11

SELECT SUM(amount) AS sum_amt
FROM payment

-- Question 12

SELECT MAX(amount),MIN(amount)
FROM payment


