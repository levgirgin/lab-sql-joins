USE sakila;

SELECT c.name AS category, COUNT(fc.film_id) AS num_films
FROM category c
JOIN film_category fc ON fc.category_id = c.category_id
GROUP BY c.category_id, c.name
ORDER BY num_films DESC, c.name;