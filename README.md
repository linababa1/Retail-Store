# South African Retail Sales Analysis 

## Introduction
This project involves analysing a South African retail sales dataset to understand sales performance, customer behaviour and product profitability 
I used Python for data cleaning and SQL for data analysis to extract meaningful insights that will help make better business decisions

## Background
The dataset represents a fictional South African retail business operating across different cities in South Africa.

It contains 2,500 records and 15 columns, covering transactions, customers, products, sales, costs, and profits.

The raw dataset contains several data quality issues, including:

- Missing values
- Duplicate records
- Inconsistent formatting
- Incorrect data types
- Unusual values and outliers

The purpose of the analysis is to clean the data and investigate important business questions.

## Tools I Used
- Python: Data Cleaning
- Pandas: Manipulate and clean dataset
- PostgreSQL: Query the data and perform business analysis
- Visual Studio Code: IDE
- GitHub: Manage and document project

## The Analysis
### **1. What is the total revenue, estimated profit and units sold?**
```sql
SELECT 
    SUM(quantity) AS total_units_sold,
    SUM(revenue_zar) AS total_revenue, 
    SUM(profit_zar) AS profit
FROM retail_sales;
```
**Results**
| Total Units Sold | Total Revenue (ZAR) | Total Profit (ZAR) |
| :---: | :---: | :---: |
| **4,183** | **R 1,569,729.84** | **R 680,445.08** |

**Insights**
The Store generated R680 445 in profit from R1 569 729 Revenue.
Sold 4183 units and generated R1 569 729 Revenue 

### **2. how does revenue trend look like over the last 12 months?**
```sql
SELECT 
    order_date as month,
    sum(revenue_zar) as total_revenue  
FROM retail_sales
GROUP BY order_date
ORDER BY order_date;
```
**Results**

![Monthly Revenue Trend](./06_Power_BI/monthly_trends.png)

**Key Insights**
- The business hits its highest revenue in August and October with R154K.
- November is the lowest performing month of the year
- In the first Quarter, March and April performed the lowest
- The store has a healthy baseline, never dropping below R110K

### **3. Which product categories generate the most revenue and profit?**

```sql
SELECT 
     product_category,
     SUM(revenue_zar) AS Revenue,
     SUM(profit_zar) AS Profit
FROM retail_sales
GROUP BY product_category
ORDER BY Revenue DESC, Profit DESC
```
**Result**

![Best_Performing_Product_Category](./06_Power_BI/Best_Performing_Product_Category.png)

**Key Insights**
- Home & Kitchen generates the highest revenue and profit
- Clothing and Electronics are also strong secondary drivers of revenue and profit
- Groceries generates the lowest revenue and profit compared to the others

**Recommendations**
- Make sure the stock for Home & Kitchen and Clothing is always available
- Because Groceries have the lowest revenue and profit margins, the business should reduce grocery inventory to prevent dead stock

## 4. Which individual products perform best and worst?
```sql
SELECT 
    product_name AS Product_Name,
    SUM(profit_zar) AS Profit
FROM retail_sales
GROUP BY product_name
ORDER BY Profit DESC;
```

**Results**

| Rank | Product Name | Total Profit (ZAR) |
|:---:|:---|-------------------:|
| 1 | Air Fryer | **R 56,538.15** |
| 2 | Cookware Set | **R 53,469.62** |
| 3 | Jacket | **R 51,423.88** |
| 4 | Perfume 50ml | **R 34,362.65** |
| 5 | Sneakers | **R 33,491.53** |
| 6 | Headphones | **R 31,154.98** |
| 7 | Bluetooth Speaker | **R 29,347.34** |
| 8 | Hoodie | **R 29,131.55** |
| 9 | Jeans | **R 28,090.89** |
| 10 | Backpack | **R 27,251.76** |
| 11 | Bed Linen Set | **R 26,319.12** |
| 12 | Electric Trimmer | **R 25,041.48** |
| 13 | Keyboard | **R 22,593.13** |
| 14 | Dumbbell Pair | **R 21,747.53** |
| 15 | Power Bank | **R 20,535.81** |
| 16 | Electric Kettle | **R 18,031.90** |
| 17 | Yoga Mat | **R 17,926.09** |
| 18 | Camping Chair | **R 17,443.11** |
| 19 | Desk Lamp | **R 16,166.76** |
| 20 | USB-C Charger | **R 14,156.02** |
| 21 | Wireless Mouse | **R 13,793.81** |
| 22 | T-Shirt | **R 12,164.63** |
| 23 | Storage Set | **R 10,412.98** |
| 24 | Face Moisturiser | **R 9,357.65** |
| 25 | Sunscreen | **R 8,321.55** |
| 26 | Water Bottle | **R 7,944.26** |
| 27 | Body Lotion | **R 7,358.72** |
| 28 | Olive Oil 500ml | **R 6,330.53** |
| 29 | Socks Pack | **R 5,329.60** |
| 30 | Skipping Rope | **R 4,606.02** |
| 31 | Tea 100 Pack | **R 4,363.27** |
| 32 | Shampoo 400ml | **R 4,255.42** |
| 33 | Coffee 250g | **R 3,956.32** |
| 34 | Cereal 1kg | **R 3,584.75** |
| 35 | Peanut Butter | **R 2,639.07** |
| 36 | Rice 2kg | **R 1,803.20** |

**Key Insights**
- The top two products: Air Fryer and Cookwar Set are both high selling Home & Kitchen items, generating over R100K
- Groceries such as Rice, Peanut Butter, Cereal, Coffee generate the lowest profit.

**Recomemendation**
- Ensure the Top 10 products are always well stocked. They are the primary profit engines
- Create bundle promotions for the low-margin grocery items to drive more traffic
