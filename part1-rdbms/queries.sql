-- Q1:
SELECT c.customer_name, SUM(oi.total_price) AS total_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
WHERE c.city = 'Mumbai'
GROUP BY c.customer_name;

-- Q2:
SELECT p.product_name, SUM(oi.quantity) AS total_quantity
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Q3:
SELECT s.sales_rep_name, COUNT(DISTINCT o.customer_id) AS customer_count
FROM Sales_Rep s
JOIN Orders o ON s.sales_rep_id = o.sales_rep_id
GROUP BY s.sales_rep_name;

-- Q4:
SELECT o.order_id, SUM(oi.total_price) AS total_value
FROM Orders o
JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY o.order_id
HAVING SUM(oi.total_price) > 10000
ORDER BY total_value DESC;

-- Q5:
SELECT p.product_name
FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;