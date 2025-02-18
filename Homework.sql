-- 1. Show the first and last names of actors with the names Nick, Ed and Jennifer as their first names.
SELECT first_name, last_name 
FROM public.actor 
WHERE first_name = ANY(ARRAY['Nick', 'Ed', 'Jennifer']);

-- 2. Show only the last name of the actor whose first names are Ed, Nick and Jennifer.
SELECT last_name 
FROM public.actor 
WHERE first_name = ANY(ARRAY['Ed', 'Nick', 'Jennifer']);

-- 3. Show all details of address table.
SELECT * 
FROM public.address;

-- 4. Show district and phone in descending order in the address table
SELECT district, phone 
FROM public.address 
ORDER BY district DESC NULLS LAST, phone DESC NULLS LAST;

-- 5. Using movie_id from movie and inventory table, show movie_id, title from Movie table and inventory_id from Inventory table.
SELECT f.film_id, f.title, i.inventory_id 
FROM public.film f 
INNER JOIN public.inventory i ON f.film_id = i.film_id;

-- 6. Show the first 5 rows consisting of inventory table and rental table.
SELECT * 
FROM public.inventory i 
INNER JOIN public.rental r ON i.inventory_id = r.inventory_id 
LIMIT 5;

-- 7. Show the first 10 rows consisting of rental_id, rental_date, payment_id, sorted in descending order by amount, consisting of the Rental and Payment tables.
SELECT r.rental_id, r.rental_date, p.payment_id, p.amount 
FROM public.rental r 
INNER JOIN public.payment p ON r.rental_id = p.rental_id 
ORDER BY p.amount DESC NULLS LAST 
LIMIT 10;

-- 8. Show other details of the rows where actor_id is empty in the Actor table.
SELECT last_name, first_name, last_update 
FROM public.actor 
WHERE actor_id IS NULL;

-- 9. Show other details of the rows in the Actor table where actor_id is not empty.
SELECT last_name, first_name, last_update 
FROM public.actor 
WHERE actor_id IS NOT NULL;

-- 10. Find the number of non-empty rows in the movie table.
SELECT COUNT(*) 
FROM public.film 
WHERE film_id IS NOT NULL;

-- 11. Show the total amount from the payment table as output header sum_amt.
SELECT COALESCE(SUM(amount), 0) AS sum_amt 
FROM public.payment;

-- 12. Show the maximum and minimum amount in the payment table.
SELECT 
    COALESCE(MAX(amount), 0) AS max_amount, 
    COALESCE(MIN(amount), 0) AS min_amount 
FROM public.payment;
