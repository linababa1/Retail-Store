/* What are the total revenue, estimated profit and units sold? */

CREATE VIEW revenue_and_profit AS
SELECT 
    SUM(quantity) AS total_units_sold,
    SUM(revenue_zar) AS total_revenue, 
    SUM(profit_zar) AS profit
FROM retail_sales;

