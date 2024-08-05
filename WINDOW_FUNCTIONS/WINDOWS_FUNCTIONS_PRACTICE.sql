

USE Practice;


 -- CREATE A TABLE;

 CREATE TABLE sales (
    sales_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    sales_date DATE,
    amount DECIMAL(10, 2)
);

 -- INSERT ROWS INTO TABLE;

INSERT INTO sales (sales_id, product_id, customer_id, sales_date, amount) VALUES
(1, 101, 1001, '2023-01-01', 150.00),
(2, 102, 1002, '2023-01-02', 200.00),
(3, 103, 1001, '2023-01-03', 50.00),
(4, 101, 1003, '2023-01-04', 300.00),
(5, 102, 1002, '2023-01-05', 250.00),
(6, 103, 1004, '2023-01-06', 100.00),
(7, 101, 1001, '2023-01-07', 350.00),
(8, 102, 1003, '2023-01-08', 150.00),
(9, 103, 1001, '2023-01-09', 200.00),
(10, 101, 1004, '2023-01-10', 400.00);

-------------------------------------------------

SELECT * FROM sales;

-------------------------------------------------
-- USING MAX() AS A WINDOWS FUNCTION:

SELECT customer_id AS ID ,product_id AS PRODUCT_ID,amount AS AMOUNT,
MAX(amount) OVER (PARTITION BY product_id ORDER BY customer_id ) MAX_AMOUNT
FROM sales;

-------------------------------------------------

-- USING ROW_NUMBER() AS A WINDOWS FUNCTION:

SELECT customer_id AS ID ,product_id AS PRODUCT_ID,amount AS AMOUNT ,
ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY customer_id ) NUMBER
FROM sales;

SELECT product_id AS PRODUCT_ID,customer_id AS ID, amount AS AMOUNT ,
ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY AMOUNT DESC ) ROW_NUMBER
FROM sales;

-------------------------------------------------

-- USING ROW_NUMBER() AS A WINDOWS FUNCTION:

SELECT product_id AS PRODUCT_ID,customer_id AS ID, amount AS AMOUNT ,
RANK() OVER (PARTITION BY product_id ORDER BY AMOUNT DESC ) RANK
FROM sales;

SELECT product_id AS PRODUCT_ID,customer_id AS ID, amount AS AMOUNT ,
DENSE_RANK() OVER (PARTITION BY product_id ORDER BY AMOUNT DESC ) RANK
FROM sales;




-- Calculate the running total of sales amounts for each customer ordered by sales_date.
SELECT 
    sales_id, 
    customer_id, 
    sales_date, 
    amount,
    SUM(amount) OVER (PARTITION BY customer_id ORDER BY sales_date) AS running_total
FROM 
    sales;


-- -------------------------------------------------
-- Find the rank of each sale amount within each product category.

SELECT 
    sales_id, 
    product_id, 
    amount,
    RANK() OVER (PARTITION BY product_id ORDER BY amount DESC) AS sales_rank
FROM 
    sales;

--	-------------------------------------------------

-- Compute the difference in sales amount between each sale and the previous sale for the same product.

SELECT 
    sales_id,
	product_id,
    sales_date, 
    amount,
    amount-LAG(amount,1) OVER (PARTITION BY product_id ORDER BY sales_date ) AS Difference_to_Previous
FROM 
    sales;

--	-------------------------------------------------
--Determine the average sales amount for each customer over all their sales.

SELECT 
    sales_id, 
    customer_id, 
    amount,
    AVG(amount) OVER (PARTITION BY customer_id) AS average_sales
FROM 
    sales;
	
	
--	-------------------------------------------------
-- Get the cumulative distribution of sales amounts within each product category.

SELECT 
	sales_id,
	product_id,
	amount,
	CUME_DIST() OVER(PARTITION BY product_id ORDER BY amount ) AS Cumulative_Distribution
	  
FROM
	sales;

--	-------------------------------------------------

-- Identify the highest sales amount within each product category.

SELECT 
	sales_id,
	product_id,
	amount,
	MAX(amount) OVER (PARTITION BY product_id) AS HIGHEST_SALE
FROM
	sales;

--	-------------------------------------------------

-- Calculate the percentage of total sales amount that each sale represents within its product category.

	SELECT 
    sales_id, 
    product_id, 
    amount,
    amount * 100.0 / SUM(amount) OVER (PARTITION BY product_id) AS percentage_of_total
FROM 
    sales;

--	-------------------------------------------------


