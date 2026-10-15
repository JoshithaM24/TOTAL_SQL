--this is acomment
/* this 
is  a
comment*/
-- sql task: Retrieve all customer data
SELECT*
FROM customers

-- retrive all order data
SELECT*
FROM orders

 --retrive each customers name,country and score
 SELECT  
	 first_name,
	 country,
	 score
 FROM customers
 
 --- WHERE CLAUSE
   --retrive customers with a score not equal to 0
  SELECT *
  FROM customers
  WHERE score != 0
    -- retrive customers from germany
SELECT *
FROM customers
WHERE country = 'Germany' --in sql if wanna write characters put them in ''

SELECT 
	first_name,
	country
FROM customers
WHERE country = 'Germany' 


--ORDER BY
--retrive all customers and sort the results by the highest score first

SELECT *
FROM customers
ORDER BY score DESC

-- retrive all customers and sort the results by the lowest score first
SELECT *
FROM customers
ORDER BY score ASC

-- retrive all customers and sort the results by the country and then by the highest score
SELECT*
FROM customers
ORDER BY
	country ASC,
	score DESC

-- GROUP BY
  -- find the total score for each country
SELECT 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country

-- find total score and total number of customers for each country
SELECT
	SUM(score) AS total_score,
	COUNT(id) AS total_customers
FROM customers
GROUP BY country

-- HAVING
 -- FIND THE AVERAGE SCORE FOR EACH COUNTRY considering only customers with a score not equal to 0 and return only those countries with an averagescore greater than 430
SELECT 
	country,
	AVG(score)AS avg_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score)>430

-- DISTINCT
  --return unique list of all countries
SELECT DISTINCT country
FROM customers

-- TOP(LIMIT)
  --retrive only 3 customers
SELECT TOP 3*
FROM customers

  -- retrive top3 customers with highest scores
SELECT TOP 3*
FROM customers
order by score desc 

  --retrive the lowest 2 customers based on the score
SELECT TOP 2*
FROM customers
order by score asc

 -- get the two most recent orders
 SELECT TOP 2*
 FROM orders
 ORDER BY order_date DESC;




