/* 
select *
from actor
Show the first and last names of actors whose first names are Nick, Ed, or Jennifer.
SELECT  first_name, last_name
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer');

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick'
   OR first_name = 'Ed'
   OR first_name = 'Jennifer';
   
Show only the last name of actors whose first names are Ed, Nick, or Jennifer.
select last_name
FROM actor
WHERE first_name = 'Nick'
   OR first_name = 'Ed'
   OR first_name = 'Jennifer';
Show all details from the address table..
select *
from address
Display district and phone from the address table, sorted in descending order.
SELECT district, phone
FROM address
ORDER BY district DESC;

Using film_id from the film and inventory tables, show film_id, title from the film table, and inventory_id from the inventory table.

SELECT f.film_id, f.title, i.inventory_id
FROM film f
JOIN inventory i ON f.film_id = i.film_id;


Show the first 5 rows consisting of the inventory and rental tables.

SELECT *
FROM inventory i
JOIN rental r ON i.inventory_id = r.inventory_id
LIMIT 5;


Show the first 10 rows consisting of rental_id, rental_date, and payment_id from the rental and payment tables, ordered by amount in descending order.

select r.rental_id, r.rental_date, p.payment_id
from rental r
join  payment p on r.rental_id=p.rental_id
ORDER BY amount DESC
LIMIT 10;

Show all details of rows where actor_id is empty (NULL) in the actor table.

select * from actor where actor_id is null;

Show all details of rows in the actor table where actor_id is not empty (NOT NULL).

select * from actor where actor_id is not null;

Find the number of non-empty rows in the film table.

SELECT COUNT(*) AS non_empty_rows
FROM film;

Show the total amount from the payment table as the output header sum_amt

SELECT SUM(amount) AS sum_amt
FROM payment;

Show the maximum and minimum amount in the payment table.

SELECT 
    MAX(amount) AS max_amount,
    MIN(amount) AS min_amount
FROM payment;
*/