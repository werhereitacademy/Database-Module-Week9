-- 1. Show the first and last names of actors with the names Nick, Ed and Jennifer as their first names.
SELECT first_name, last_name 
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer');

-- 2. Show only the last name of the actor whose first names are Ed, Nick and Jennifer.
SELECT last_name 
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer');

-- 3. Show all details of address table.
SELECT * 
FROM address;

-- 4. Show district and phone in descending order in the address table
SELECT district, phone
FROM address
ORDER BY district DESC, phone DESC;
-- ORDER BY column_name DESC → Verileri belirli bir sütuna göre azalan sırayla sıralar.
-- ORDER BY district DESC, phone DESC → Önce ilçeleri (district) sıraladık,
-- aynı ilçede birden fazla kayıt varsa telefonları da azalan sırada gösterdik.

-- 5. Using movie_id from movie and inventory table, show movie_id, title from Movie table and inventory_id from Inventory table.
SELECT film.film_id, film.title, inventory.inventory_id
FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id;
-- film tablosunda: film_id → Filmin kimliği (Primary Key)
-- inventory tablosunda: film_id → Hangi filme ait olduğunu gösteren Foreign Key

-- 6. Show the first 5 rows consisting of inventory table and rental table.
SELECT * 
FROM inventory
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
LIMIT 5;
-- INNER JOIN -->İki (veya daha fazla) tabloyu birleştirmeye yarar.Sadece eşleşen satırları döndürür.

-- 7. Show the first 10 rows consisting of rental_id, rental_date, payment_id, sorted in descending order by amount, consisting of the Rental and Payment tables.
SELECT rental.rental_id, rental.rental_date, payment.payment_id
FROM payment
INNER JOIN rental ON payment.rental_id = rental.rental_id
ORDER BY payment.amount DESC
LIMIT 10;
-- payment ve rental tablolarını rental_id üzerinden birleştirdin.
-- Tutar (amount) üzerinden azalan sırayla sıraladı

-- 8. Show other details of the rows where actor_id is empty in the Actor table.

SELECT * 
FROM actor
WHERE actor_id IS NULL;

-- 9. Show other details of the rows in the Actor table where actor_id is not empty
SELECT * 
FROM actor
WHERE actor_id IS NOT NULL;

-- 10. Find the number of non-empty rows in the movie table.
SELECT COUNT(*)
FROM film
WHERE title IS NOT NULL;

--11. Show the total amount from the payment table as output header sum_amt.
SELECT MAX(amount) AS max_amt, MIN(amount) AS min_amt
FROM payment;

--12. Show the maximum and minimum amount in the payment table.
SELECT SUM(amount) AS sum_amt
FROM payment;



