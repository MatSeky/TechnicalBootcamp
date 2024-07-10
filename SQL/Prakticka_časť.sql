-- Zadanie 1
SELECT c.cust_name AS "Customer Name", c.city, s.name AS "Salesman", s.commission
FROM customer c
JOIN salesman s ON c.salesman_id=s.salesman_id;

-- Zadanie 2a) pod¾a screenu výsledkku
SELECT s.salesman_id, s.city, c.customer_id, o.ord_no, o.purch_amt, o.ord_date, c.cust_name, c.grade, s.name, s.commission
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
JOIN salesman s ON o.salesman_id = s.salesman_id;

--Zadanie 2b) pod¾a popisu
SELECT o.*, s.*, c.*
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
JOIN salesman s ON o.salesman_id = s.salesman_id;

--Zadanie 3
SELECT o.ord_no, o.purch_amt, c.cust_name, c.city
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
WHERE purch_amt BETWEEN 500 AND 2000;

--Zadanie 4
SELECT o.*
FROM orders o
WHERE o.salesman_id = (
    SELECT s.salesman_id
    FROM salesman s
    WHERE s.name = 'James Hoog');

--Zadanie 5
SELECT *
FROM orders
WHERE purch_amt > (
    SELECT AVG (purch_amt)
    FROM orders
    WHERE ord_date <= '10-10-2012');


    


