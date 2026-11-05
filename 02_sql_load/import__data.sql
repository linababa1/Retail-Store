COPY retail_sales(
    transaction_id, 
    order_id, 
    order_date, 
    customer_id, 
    city, 
    sales_channel, 
    product_category, 
    product_name, 
    quantity, 
    unit_price_zar, 
    discount_percent, 
    unit_cost_zar, 
    payment_method, 
    revenue_zar, 
    profit_zar
)
FROM 'C:\Analytics Engineer\Data Analyst Projects\Retail Store\01_Data\clean_retail_sales.csv'
DELIMITER ';' 
CSV HEADER;

SELECT * FROM retail_sales LIMIT 10;