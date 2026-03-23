-- [Keep your CREATE TABLE statements as they are]

-- Cleaned Data Insertion
INSERT INTO dim_product (product_id, product_name, category) VALUES
(1, 'Speaker', 'Electronics'),
(2, 'Tablet', 'Electronics'),
(3, 'Phone', 'Electronics'),
(4, 'Atta 10kg', 'Grocery'),
(5, 'Jeans', 'Clothing');

INSERT INTO dim_store (store_id, store_name, location) VALUES
(1, 'Chennai Anna', 'Chennai'),
(2, 'Delhi South', 'Delhi'),
(3, 'Bangalore MG', 'Bangalore'),
(4, 'Pune FC Road', 'Pune');

INSERT INTO dim_date (date_id, full_date, month, year) VALUES
(1, '2023-08-29', 8, 2023),
(2, '2023-12-12', 12, 2023),
(3, '2023-02-05', 2, 2023),
(4, '2023-01-15', 1, 2023),
(5, '2023-10-26', 10, 2023);

-- Fact table with calculated revenue
INSERT INTO fact_sales (sales_id, date_id, store_id, product_id, quantity, revenue) VALUES
(5000, 1, 1, 1, 3, 147788.34),  -- 3 * 49262.78
(5001, 2, 1, 2, 11, 255487.32), -- 11 * 23226.12
(5002, 3, 1, 3, 20, 974067.80), -- 20 * 48703.39
(5003, 4, 2, 2, 14, 325165.68), -- 14 * 23226.12
(5007, 5, 4, 5, 16, 37079.52);  -- 16 * 2317.47