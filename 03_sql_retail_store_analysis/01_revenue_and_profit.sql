/* What are the total revenue, estimated profit and units sold? */

SELECT 
    SUM(quantity) AS total_units_sold,
    SUM(revenue_zar) AS total_revenue, 
    SUM(profit_zar) AS profit
FROM retail_sales;

