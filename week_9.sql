CREATE TABLE actor (
	actor_id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT
	);
	
INSERT INTO actor (first_name, last_name) VALUES
('Nick', 'Cage'),
('Ed', 'Harris'),
('Jennifer', 'Lawrence'),
('Tom', 'Hanks'),
('Nick', 'Fury'),
('Ed', 'Sheeran'),
('Jennifer', 'Aniston');

CREATE TABLE address (
	address_id INTEGER PRIMARY KEY,
	district TEXT,
	phone TEXT
);

INSERT INTO address (district, phone) VALUES
('Manhattan', '212-555-1234'),
('Brooklyn', '718-555-5678'),
('Queens', '718-555-9012'),
('Bronx', '347-555-3456');


CREATE TABLE film (
	film_id INTEGER PRIMARY KEY,
	title TEXT
);

INSERT INTO film (title) VALUES
('The Matrix'),
('Inception'),
('Titanic');


CREATE TABLE inventory (
	inventory_id INTEGER PRIMARY KEY,
	film_id INTEGER
);

INSERT INTO inventory (film_id) VALUES
(1),
(1),
(2),
(3);

CREATE TABLE rental(
	rental_id INTEGER PRIMARY KEY,
	rental_date TEXT,
	inventory_id INTEGER
);

INSERT INTO rental (rental_date, inventory_id) VALUES
('2023-06-01', 1),
('2023-06-02', 2),
('2023-06-03', 3),
('2023-06-04', 4);


CREATE TABLE payment (
	payment_id INTEGER PRIMARY KEY,
	rental_id INTEGER,
	amount REAL
);

INSERT INTO payment (rental_id, amount) VALUES
(1, 10.00),
(2, 15.50),
(3, 7.25),
(4, 20.00);


SELECT first_name, last_name
FROM actor
WHERE first_name in ('Nick', 'Ed', 'Jennifer');

SELECT last_name
FROM actor
WHERE first_name in ('Nick', 'Ed', 'Jennifer');

SELECT *
FROM address;

SELECT district, phone
FROM address
ORDER BY district DESC;

SELECT f.film_id, f.title, i.inventory_id
FROM film f
JOIN inventory i on f.film_id = i.film_id;

SELECT * FROM inventory LIMIT 5;
SELECT * FROM rental LIMIT 5;

SELECT r.rental_id, r.rental_date, p.payment_id
FROM rental r
JOIN payment p on r.rental_id = p.rental_id
ORDER BY p.amount DESC
LIMIT 10;

SELECT *
FROM actor
WHERE actor_id is NULL;

SELECT count(*)
FROM film
WHERE film_id is not NULL;

SELECT sum(amount) as sum_amt
FROM payment;

SELECT max(amount) as max_amount, min(amount) as min_amount
FROM payment;

SELECT name FROM sqlite_master WHERE type = 'table';

SELECT * FROM actor;
SELECT * FROM address;
SELECT * FROM film;
SELECT * FROM inventory;
SELECT * FROM rental;
SELECT * FROM payment;