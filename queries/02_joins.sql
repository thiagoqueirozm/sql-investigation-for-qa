-- List users and their orders

SELECT users.name, orders.product
FROM users
JOIN orders
ON users.id = orders.user_id

-- Count how many orders each user made

SELECT users.name, COUNT(orders.id)
FROM users
LEFT JOIN orders
ON users.id = orders.user_id
GROUP BY users.name;