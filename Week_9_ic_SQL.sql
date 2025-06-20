i. Show the first and last names of actors whose first names are Nick, Ed, or Jennifer.
İlk adları Nick, Ed veya Jennifer olan aktörlerin adlarını ve soyadlarını gösterin.

SELECT first_name, last_name
FROM actor
WHERE first_name in ('Nick', 'Ed', 'Jennifer')

Show only the last name of actors whose first names are Ed, Nick, or Jennifer.
İlk adları Ed, Nick veya Jennifer olan oyuncuların yalnızca soyadını gösterin.

SELECT last_name
FROM actor
WHERE first_name in ('Nick', 'Ed', 'Jennifer')

Show all details from the address table..
SELECT *
FROM address

Display district and phone from the address table, sorted in descending order.
Adres tablosundan bölge ve telefonu azalan sırada sıralanmış olarak görüntüleyin.

SELECT district, phone 
FROM address
ORDER BY district desc, phone desc


Using film_id from the film and inventory tables, show film_id, title from the film table, and inventory_id from the inventory table.
Film ve envanter tablolarından film_id kullanarak, film tablosundan film_id, title ve envanter tablosundan inventory_id öğelerini gösterin.

SELECT f.title, i.inventory_id
FROM film f
JOIN inventory i ON f.film_id = i.inventory_id


Show the first 5 rows consisting of the inventory and rental tables.
Envanter ve kiralama tablolarından oluşan ilk 5 satırı gösterin.

SELECT * 
FROM inventory i
JOIN rental r ON i.inventory_id = r.inventory_id
LIMIT 5;



Show the first 10 rows consisting of rental_id, rental_date, and payment_id from the rental and payment tables, ordered by amount in descending order.
Kiralama ve ödeme tablolarındaki rental_id, rental_date ve payment_id öğelerinden oluşan ilk 10 satırı tutara göre azalan sırada gösterin.

SELECT r.rental_id, r.rental_date, p.payment_id, p.amount
FROM rental r
JOIN payment p ON r.rental_id = p.rental_id
ORDER BY amount DESC
LIMIT 10;

Show all details of rows where actor_id is empty (NULL) in the actor table.
Aktör tablosunda aktör_id'nin boş (NULL) olduğu satırların tüm ayrıntılarını gösterir.

SELECT *
FROM actor
WHERE actor_id IS NULL;

Show all details of rows in the actor table where actor_id is not empty (NOT NULL).

SELECT *
FROM actor
WHERE actor_id IS NOT NULL;


Find the number of non-empty rows in the film table.
Film tablosundaki boş olmayan satırların sayısını bulun.

SELECT COUNT(*) AS non_empty_row_count
FROM film
WHERE (
  film_id IS NOT NULL AND
  title IS NOT NULL AND
  description IS NOT NULL AND
  release_year IS NOT NULL AND
  language_id IS NOT NULL AND
  rental_duration IS NOT NULL AND
  rental_rate IS NOT NULL AND
  length IS NOT NULL AND
  replacement_cost IS NOT NULL AND
  rating IS NOT NULL AND
  last_update IS NOT NULL
);

VEYA (Tek bilgi üstünden kontrol)

SELECT COUNT(*) AS non_empty_row_count
FROM film
WHERE film_id IS NOT NULL;


Show the total amount from the payment table as the output header sum_amt.
Ödeme tablosundaki toplam tutarı sum_amt çıktı başlığı olarak gösterin.

SELECT SUM(amount) AS sum_amt
FROM payment;


Show the maximum and minimum amount in the payment table.
Ödeme tablosunda maksimum ve minimum tutarı gösterin.

SELECT Max(amount) AS min_amount, 
Min(amount) AS min_amount
FROM payment;

