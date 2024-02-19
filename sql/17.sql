/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
SELECT
    co.country,
    SUM(p.amount) AS profit
FROM
    country co
INNER JOIN
    city ci ON co.country_id = ci.country_id
INNER JOIN
    address a ON ci.city_id = a.city_id
INNER JOIN
    customer cu ON a.address_id = cu.address_id
INNER JOIN
    rental r ON cu.customer_id = r.customer_id
INNER JOIN
    payment p ON r.rental_id = p.rental_id
GROUP BY
    co.country
ORDER BY
    co.country ASC;

