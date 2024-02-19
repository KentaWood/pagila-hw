/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
SELECT
    f.title
FROM
    film f
INNER JOIN
    film_category fc ON f.film_id = fc.film_id
INNER JOIN
    category c ON fc.category_id = c.category_id
where 
    c.name = 'Family';
