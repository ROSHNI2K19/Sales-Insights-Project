# EDA using SQL

#  all customer records
SELECT * 
FROM customers;

# count of customers
SELECT COUNT(*)
FROM customers;

# all transactions for Mumbai
SELECT *
FROM transactions
WHERE market_code = 'Mark002';

# all transactions in the year 2020 for Mumbai
SELECT transactions.*, date. year
FROM transactions
INNER JOIN date 
ON transactions.order_date=date.date
WHERE date.year = 2020 
AND market_code = 'Mark002' ;

# total revenue in year 2020 for Mumbai
SELECT SUM(transactions.sales_amount), transactions.market_code,  date.year
FROM transactions
INNER JOIN date 
ON transactions.order_date=date.date
WHERE date.year = 2020 
AND market_code = 'Mark002' ;

#Distinct products sold in Mumbai for year 2020
SELECT DISTINCT transactions.product_code, transactions. market_code, date.year
FROM transactions
INNER JOIN date
ON transactions.order_date=date.date
WHERE date.year = 2020 
AND market_code = 'Mark002' ;
