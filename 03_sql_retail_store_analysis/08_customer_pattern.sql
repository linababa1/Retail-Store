/* What patterns can you identify among repeat customers? */

WITH order_level AS (
    SELECT
        customer_id,
        order_id,
        order_date,
        SUM(revenue_zar) AS order_revenue,
        SUM(profit_zar) AS order_profit,
        SUM(quantity) AS order_quantity
    FROM retail_sales
    GROUP BY customer_id, order_id, order_date
),

customer_summary AS (
    SELECT
        customer_id,
        COUNT(DISTINCT order_id) AS total_orders,
        SUM(order_revenue) AS total_spent,
        SUM(order_profit) AS total_profit,
        SUM(order_quantity) AS total_quantity_purchased,
        ROUND(AVG(order_revenue), 2) AS avg_order_value,
        MIN(order_date) AS first_order_date,
        MAX(order_date) AS last_order_date,
        MAX(order_date) - MIN(order_date) AS customer_lifespan
    FROM order_level
    GROUP BY customer_id
)

SELECT 
    customer_id,
    total_orders,
    total_spent,
    total_profit,
    total_quantity_purchased,
    avg_order_value,
    first_order_date,
    last_order_date,
    customer_lifespan,
    CASE
        WHEN total_orders = 1 THEN 'One-time Customer'
        WHEN total_orders BETWEEN 2 AND 3 THEN 'Occasional Customer'
        WHEN total_orders BETWEEN 4 AND 6 THEN 'Regular Customer'
        ELSE 'Frequent Customer'
    END AS customer_segment
FROM customer_summary
WHERE total_orders > 1
ORDER BY total_spent DESC;



