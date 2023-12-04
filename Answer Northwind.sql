-- The time range of the available data (in days)
SELECT DATEDIFF(MAX(OrderDate), MIN(OrderDate)) AS time_range_days FROM orders;

-- The number of transactions that occurred in the fourth quarter of 1996
SELECT COUNT(*) FROM orders WHERE QUARTER(OrderDate) = 4 AND YEAR(OrderDate) = 1996;

-- Average sales per month in 1996
SELECT MONTH(OrderDate) AS month_1996, AVG(Price*Quantity) AS avg_monthly_sales FROM orderdetails od JOIN products p ON p.ProductID = od.ProductID JOIN orders o ON o.OrderID = od.OrderID WHERE YEAR(OrderDate) = 1996 GROUP BY month_1996;

-- Obtaining the full name of an employee
SELECT CONCAT_WS(" ", LastName, FirstName) AS full_name FROM employees LIMIT 5;

-- Data of the oldest employee
SELECT * FROM employees WHERE BirthDate = (SELECT MIN(BirthDate) FROM employees);

-- Data of the youngest employee
SELECT * FROM employees WHERE BirthDate = (SELECT MAX(BirthDate) FROM employees);