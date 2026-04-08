-- Set up warehouse and database
USE WAREHOUSE compute_wh;

CREATE OR REPLACE DATABASE retail_analytics;
USE DATABASE retail_analytics;

-- Create schema
CREATE SCHEMA retail_schema;
USE SCHEMA retail_schema;

-- Create sequence for product IDs
CREATE OR REPLACE SEQUENCE product_seq START = 1 INCREMENT = 1;

-- Create products table
CREATE OR REPLACE TABLE products (
product_id NUMBER DEFAULT product_seq.NEXTVAL,
product_name VARCHAR,
product_category VARCHAR,
product_price NUMBER
);

-- Create sequence for customer IDs
CREATE OR REPLACE SEQUENCE customer_seq START = 1 INCREMENT = 1;

-- Create customers table
CREATE OR REPLACE TABLE customers (
customer_id NUMBER DEFAULT customer_seq.NEXTVAL,
customer_name VARCHAR,
customer_email VARCHAR,
customer_joining_date DATE
);

-- Create sequence for order IDs
CREATE OR REPLACE SEQUENCE orders_seq START = 1 INCREMENT = 1;

-- Create orders table
CREATE OR REPLACE TABLE orders (
order_id NUMBER DEFAULT orders_seq.NEXTVAL,
product_id NUMBER,
customer_id NUMBER,
quantity NUMBER,
order_date DATE
);