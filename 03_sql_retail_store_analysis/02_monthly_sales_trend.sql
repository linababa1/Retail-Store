/* how does revenue trend look like over the last 12 months? */

CREATE VIEW monthly_sales AS
SELECT 
    order_date as month,
    sum(revenue_zar) as total_revenue  
FROM retail_sales
GROUP BY order_date
ORDER BY order_date;

