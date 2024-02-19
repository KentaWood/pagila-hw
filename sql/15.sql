/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT
    c.name AS name,
    COUNT(*) AS sum
FROM
    category c
INNER JOIN
    film_category fc ON c.category_id = fc.category_id
INNER JOIN
    film f ON fc.film_id = f.film_id
INNER JOIN
    language l ON f.language_id = l.language_id
WHERE
    l.name = 'English'
GROUP BY
    c.name;
