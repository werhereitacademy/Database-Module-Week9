--1.Show the first and last names of actors whose first names are Nick, Ed, or Jennifer.
--(Adları Nick, Ed veya Jennifer olan aktörlerin ad ve soyadlarını göster.)
SELECT first_name, last_name
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer');

--2.Show only the last name of actors whose first names are Ed, Nick, or Jennifer.
--(Adları Ed, Nick veya Jennifer olan aktörlerin sadece soyadlarını göster.)
SELECT last_name
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer');

--3.Show all details from the address table.
--(Adres tablosundaki tüm ayrıntıları göster.)
SELECT * FROM address; 

--4.Display district and phone from the address table, sorted in descending order.
--(Adres tablosundaki bölge ve telefon numaralarını azalan sırayla göster.)
SELECT district, phone
FROM address        
ORDER BY district DESC;

--5.Using film_id from the film and inventory tables, show film_id, title from the film table, and inventory_id from the inventory table.
--(Film ve envanter tablolarındaki film_id kullanarak, film tablosundaki film_id ve başlık ile envanter tablosundaki inventory_id'yi göster.)
SELECT film.film_id, film.title, inventory.inventory_id
FROM film      
JOIN inventory ON film.film_id = inventory.film_id;

--6.Show the first 5 rows consisting of the inventory and rental tables.
--(Envanter ve kiralama tablolarından oluşan ilk 5 satırı gösterin.)
SELECT * 
FROM inventory 
JOIN rental  ON inventory.inventory_id = rental.inventory_id
LIMIT 5;

--7.Show the first 10 rows consisting of rental_id, rental_date, and payment_id from the rental and payment tables, ordered by amount in descending order.
--(Kiralama ve ödeme tablolarından rental_id, rental_date ve payment_id sütunlarından oluşan ilk 10 satırı, tutar bazında azalan sırada gösterin.)
SELECT r.rental_id, r.rental_date, p.payment_id
FROM rental r
JOIN payment p ON r.rental_id = p.rental_id
ORDER BY p.amount DESC
LIMIT 10;

--8.Show all details of rows where actor_id is empty (NULL) in the actor table.
--(Actor tablosunda actor_id sütunu boş (NULL) olan tüm satırların ayrıntılarını gösterin.)
SELECT * 
FROM actor
WHERE actor_id IS NULL;

--9.Show all details of rows in the actor table where actor_id is not empty (NOT NULL).
--(Actor tablosunda actor_id sütunu boş olmayan (NOT NULL) tüm satırların ayrıntılarını gösterin.)
SELECT * 
FROM actor
WHERE actor_id IS NOT NULL;

--10.Find the number of non-empty rows in the film table.
--(Film tablosunda boş olmayan satırların sayısını bulun.)
SELECT COUNT(*)
FROM film
WHERE film_id IS NOT NULL;

--11.Show the total amount from the payment table as the output header sum_amt.
--(Ödeme tablosundaki toplam tutarı çıktı başlığı sum_amt olarak gösterin.)
SELECT SUM(amount) AS sum_amt
FROM payment;

--12.Show the maximum and minimum amount in the payment table.
--(Ödeme tablosundaki maksimum ve minimum tutarı gösterin.)
SELECT 
MAX(amount) AS max_amount,
MIN(amount) AS min_amount
FROM payment;



