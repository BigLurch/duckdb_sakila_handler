SELECT
    cat.name AS category,
    ROUND(SUM(p.amount), 2) AS total_revenue
FROM
    raw_sakila.category cat
    JOIN sakila.film_category fc ON fc.category_id = cat.category_id
    JOIN sakila.inventory i ON i.film_id = fc.film_id
    JOIN sakila.rental r ON r.inventory_id = i.inventory_id
    JOIN sakila.payment p ON p.rental_id = r.rental_id
GROUP BY
    1
ORDER BY
    total_revenue DESC;