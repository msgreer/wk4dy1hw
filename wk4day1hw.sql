-- How many actors are there with the last name ‘Wahlberg’?
-- 2
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';


-- How many payments were made between $3.99 and $5.99?
-- 4764
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- What film does the store have the most of? (search in inventory)
--1000
SELECT film_id, MAX(inventory_id) 
FROM inventory
GROUP BY inventory_id ;

--How many customers have the last name ‘William’?
--0
SELECT last_name 
FROM customer
WHERE last_name = 'William';

--What store employee (get the id) sold the most rentals?
--Employee 1
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY staff_id

--How many different district names are there?
-- 378
SELECT COUNT(DISTINCT district)
FROM address;

--What film has the most actors in it? (use film_actor table and get film_id)
--508
SELECT DISTINCT(film_id), COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- 13
SELECT last_name, store_id
FROM customer
WHERE last_name 
LIKE '%es' AND store_id = 1;

--How many payment amounts (4.99, 5.99, etc.) 
--had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT customer_id, rental_id, amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY rental_id <250;

--Within the film table, how many rating categories are there? 
--And what rating has the most movies total?
--5 catergories. PG-13 has the most.
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY rating;