/* Question: Which product categories generate the most revenue and profit? */

SELECT 
     product_category,
     SUM(revenue_zar) AS Revenue,
     SUM(profit_zar) AS Profit
FROM retail_sales
GROUP BY product_category
