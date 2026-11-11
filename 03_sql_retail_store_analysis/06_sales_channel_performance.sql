/* Question: Which sales channel performs best? */

UPDATE retail_sales
SET sales_channel = CASE 
    WHEN LOWER(sales_channel) IN ('in store', 'in-store') THEN 'In-store'
    WHEN LOWER(sales_channel) IN ('click and collect', 'click & collect') THEN 'Click & Collect'
    WHEN LOWER(sales_channel) = 'online' THEN 'Online'
    ELSE sales_channel
END;

SELECT 
        COUNT(transaction_id) AS Total_Transactions,
        sales_channel,
        SUM(revenue_zar) AS Revenue,
        SUM(profit_zar) AS Profit
FROM retail_sales
GROUP BY sales_channel
ORDER BY Revenue DESC;
