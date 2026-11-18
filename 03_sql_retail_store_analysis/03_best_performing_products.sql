/* Question: Which product categories generate the most revenue and profit? */

/* Clean Data */
UPDATE retail_sales
SET product_category = 'Beauty & Personal Care'
WHERE product_category = 'Beauty and Personal Care';

/* Analysis */

CREATE VIEW best_performing_product_categories AS
SELECT 
     product_category,
     SUM(revenue_zar) AS Revenue,
     SUM(profit_zar) AS Profit
FROM retail_sales
GROUP BY product_category
ORDER BY Revenue DESC, Profit DESC
