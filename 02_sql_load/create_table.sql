CREATE TABLE retail_sales(
    transaction_id VARCHAR(20) PRIMARY KEY,
    order_id VARCHAR(20),
    order_date DATE,
    customer_id VARCHAR(20),
    city VARCHAR(50),
    sales_channel VARCHAR(50),
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INTEGER,
    unit_price_zar NUMERIC(10, 2),
    discount_percent NUMERIC(5, 2),
    unit_cost_zar NUMERIC(10, 2),
    payment_method VARCHAR(50),
    revenue_zar NUMERIC(12, 2),
    profit_zar NUMERIC(12, 2)
);