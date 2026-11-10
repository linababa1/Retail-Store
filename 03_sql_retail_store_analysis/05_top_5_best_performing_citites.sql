/* Question: Which cities generate the most revenue? */

SELECT 
    city,
    SUM(revenue_zar) AS total_revenue
FROM retail_sales
GROUP BY city
ORDER BY total_revenue DESC
LIMIT 5;