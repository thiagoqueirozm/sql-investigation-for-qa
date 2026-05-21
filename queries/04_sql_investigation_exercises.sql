-- Ivestigation Exercises

--EXERCISE 1

-- A user named Maria reported that she placed
-- some orders, but the system shows "NO ORDERS"
-- Verify: If Maria is a valid user and if she has orders

--First:

SELECT *
FROM users 
WHERE name = 'Maria';

--Then:

SELECT users.name, COUNT(orders.id)
FROM users
LEFT JOIN orders
ON users.id = orders.user_id
WHERE users.name = 'Maria'
GROUP BY users.name;

-- EXERCISE 2

-- Find which user placed the most orders
-- and show the number of orders.
-- Sort the result from highest to lowest.

SELECT users.name, COUNT(orders.id)
FROM users
LEFT JOIN orders
ON users.id = orders.user_id
GROUP BY users.name
ORDER BY COUNT(orders.id) DESC;

-- EXERCISE 3 

-- Which users didn't place any orders?

SELECT users.name
FROM users
LEFT JOIN orders
ON users.id = orders.user_id
WHERE orders.id IS NULL;

-- EXERCISE 4

-- Which users placed more than 1 order?

SELECT users.name, COUNT(orders.id)
FROM users
JOIN orders
ON users.id = orders.user_id
GROUP BY users.name
HAVING COUNT(orders.id) > 1;

-- EXERCISE 5

-- What does each of the following queries return?

--Query 1:
SELECT COUNT(orders.id)
FROM orders
WHERE user_id = 1;


-- Query 2:
SELECT orders.user_id, COUNT(orders.id)
FROM orders
GROUP BY orders.user_id;

-- Query 3:

SELECT users.name, COUNT(orders.id)
FROM users
JOIN orders
ON users.id = orders.user_id
GROUP BY users.name
HAVING COUNT(orders.id) > 1;

-- Answer to Query 1: How many orders user 1 placed
-- Answer to Query 2: How many orders each user placed
-- Answer to Query 3: Which users placed more than one order


-- Comments:

-- These exercises were provided by ChatGPT, as part of my learning process. 
-- solving them helped me develop logical thinking, understand SQL concepts, 
-- and practice writing SQL queries in a structured way.

-- I learned that the best way for me to build a query is by answering a few key questions:
-- What do I want? (Which user? How many orders?)
-- Where can I find this information (users? orders?)
-- Do I need to JOIN tables?
-- Do I need to COUNT or just SELECT data?
-- Do I need to filter the results?
-- Do I need to GROUP the data?
