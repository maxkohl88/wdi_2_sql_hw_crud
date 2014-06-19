DROP DATABASE bank_homework;-- In case there is already a bank_homework database, drop it


CREATE DATABASE bank_homework;-- Create a bank_homework database
\c bank_homework

-- Connect to the bank_homework databases

CREATE TABLE payments (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  amount MONEY,
  payer_name TEXT,
  recipient_name TEXT,
  description TEXT
);

INSERT INTO payments (amount, payer_name, recipient_name, description) VALUES
  (40.33, 'Max', 'Chase', 'cable, gas, and electric');

-- Create a payments table
--  The table should have columns of id, created_at, amount, payer_name,
--  recipient_name, and description with the appropriate datatypes

ALTER TABLE payments ADD zipcode INTEGER;

-- Alter the payments table, add the column of `zipcode`
-- to specify where the transaction was made

INSERT INTO payments (amount, payer_name, recipient_name, description, zipcode) VALUES
  (300, 'Adam', 'Adam', 'initial deposit', 02140),
  (300, 'Becky', 'Becky', 'initial deposit', 02140),
  (300, 'Chris', 'Chris', 'initial deposit', 02140),
  (5, 'Adam', 'Becky', 'coffee', 02446),
  (50, 'Becky', 'Chris', 'dinner', 02214),
  (64, 'Chris', 'Adam', 'golf', 02140),
  (23, 'Adam', 'Chris', 'gas', 02140),
  (23, 'Becky', 'Chris', 'gas', 02140),
  (28, 'Chris', 'Becky', 'movie', 02140),
  (44, 'Adam', 'Chris', 'bills', 02140),
  (53, 'Chris', 'Adam', 'Red Sox tickets', 02140),
  (17, 'Adam', 'Becky', 'concert tickets', 02140),
  (60, 'Becky', 'Adam', 'dogsitting', 02140),
  (30, 'Becky', 'Chris', 'dog walking', 02140),
  (25, 'Adam', 'Becky', 'poker game', 02140),
  (25, 'Chris', 'Becky', 'poker game', 02140),
  (32, 'Adam', 'Becky', 'dinner', 02140),
  (5, 'Chris', 'Adam', 'coffee', 02140),
  (12, 'Becky', 'Adam', 'movie', 02140),
  (14, 'Adam', 'Chris', 'cab', 02140);

-- Insert 20 rows into the payments table
-- The first of these payments should be deposits
-- try to keep the accounts positive and have at least three different payers.

UPDATE payments SET amount = amount + 10 WHERE id = 9;

-- You receive notice that the payment with id of 9 is $10 too low.
-- Alter that row so that it is corrected

DELETE FROM payments WHERE amount < 2;

-- Delete all payments with an amount under $2

SELECT * FROM payments;

-- Select all entries from the payments table

SELECT * FROM payments ORDER BY amount DESC;

-- In a single query, output all payments ordered from the largest to the smallest

SELECT DISTINCT recipient_name FROM payments;

-- In a single query, output the names of all distinct recipients

-- SELECT * FROM payments
-- WHERE created_at >= curdate() - INTERVAL DAYOFWEEK(curdate())+6 DAY
-- AND created_at < curdate() - INTERVAL DAYOFWEEK(curdate())-1 DAY;
-- answer needs fixing
-- In a single query, select all payments created in the past week

SELECT * FROM payments WHERE description IS NULL;

-- In a single query, select all payments with a blank description

SELECT * FROM payments WHERE payer_name = 'Chris';

-- In a single query, select all payments matching the name of one of the payers (choose any single one)
