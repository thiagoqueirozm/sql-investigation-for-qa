-- EXERCISE 1
-- List all users

SELECT *
FROM users;

-- EXERCISE 2
-- Find user by email

SELECT *
FROM users
WHERE email = 'thiago@email.com';

-- EXERCISE 3
-- Count total users

SELECT Count(*)
FROM users;
