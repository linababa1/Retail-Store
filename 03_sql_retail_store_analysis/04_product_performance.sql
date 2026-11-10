/* Question: Which individual products perform best and worst? */

SELECT 
    product_name AS Product_Name,
    SUM(profit_zar) AS Profit
FROM retail_sales
GROUP BY product_name
ORDER BY Profit DESC;