/* how does revenue trend look like over the last 12 months? */

SELECT 
    TO_CHAR(order_date, 'Mon') as month,
    sum(revenue_zar) as total_revenue  
FROM retail_sales
GROUP BY TO_CHAR(order_date, 'Mon')
ORDER BY MIN(order_date);

