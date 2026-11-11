/*Question: Which payment methods are most popular? */

SELECT 
    COUNT(transaction_id) AS Total_Number,
    payment_method
FROM retail_sales
GROUP BY payment_method
ORDER BY Total_Number DESC;