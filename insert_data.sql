-- Insert sample products
INSERT INTO products (product_name, product_category, product_price) VALUES
('Laptop', 'Electronics', 75000),
('Mobile', 'Electronics', 35000),
('Headphones', 'Accessories', 2500),
('Chair', 'Furniture', 5000);

-- Insert sample customers
INSERT INTO customers (customer_name, customer_email, customer_joining_date) VALUES
('Tanuja Sri', 'tanuja@gmail.com', '2024-01-10'),
('kedhar', 'kedhar@gmail.com', '2024-02-05'),
('radha', 'radha@gmail.com', '2024-03-12');

-- Insert sample orders
INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 2, '2024-02-01'),
(1, 2, 1, '2024-02-10'),
(2, 1, 1, '2024-02-15'),
(3, 3, 3, '2024-03-20');