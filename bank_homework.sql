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


-- Alter the payments table, add the column of `zipcode`
-- to specify where the transaction was made


-- Insert 20 rows into the payments table
-- The first of these payments should be deposits
-- try to keep the accounts positive and have at least three different payers.


-- You receive notice that the payment with id of 9 is $10 too low.
-- Alter that row so that it is corrected


-- Delete all payments with an amount under $2


-- Select all entries from the payments table


-- In a single query, output all payments ordered from the largest to the smallest


-- In a single query, output the names of all distinct recipients


-- In a single query, select all payments created in the past week


-- In a single query, select all payments with a blank description


-- In a single query, select all payments matching the name of one of the payers (choose any single one)
