/* What patterns can you identify among repeat customers? */

SELECT 
    customer_id,
    city,
    sales_channel,
    product_category,
    product_name,
    quantity
FROM retail_sales
GROUP BY customer_id, city, sales_channel, product_category,product_name, quantity
ORDER BY quantity DESC
LIMIT 10;