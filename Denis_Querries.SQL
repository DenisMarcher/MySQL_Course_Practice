SELECT orderNumber, productCode,priceEach,quantityOrdered, priceEach*quantityOrdered AS 'total cos'
FROM orderdetails;

SELECT orderNumber, productCode,priceEach,quantityOrdered, priceEach*quantityOrdered AS total_cost
FROM orderdetails;

SELECT orderNumber, productCode,priceEach,quantityOrdered, priceEach*quantityOrdered AS total_cost, quantityOrdered as quantity
FROM orderdetails;

SELECT orderNumber, productCode,priceEach,quantityOrdered as quantity, priceEach*quantityOrdered AS total_cost
FROM orderdetails;

SELECT orderdetails.orderNumber, orderdetails.priceEach as price, avg(price) AS averagePrice;

SELECT orderdetails.orderNumber, orderdetails.priceEach as price, price avg;

SELECT orderdetails.orderNumber, orderdetails.priceEach as price, avg(price);

SELECT orderdetails.orderNumber, orderdetails.priceEach as price, avg(priceEach)
FROM orderdetails;

SELECT orderdetails.orderNumber, orderdetails.priceEach as price
FROM orderdetails;

SELECT orderdetails.orderNumber, orderdetails.priceEach as price, orderdetails.quantityOrdered as quantity
FROM orderdetails;

SELECT orderdetails.orderNumber, employees.*,orderdetails.priceEach as price, orderdetails.quantityOrdered as quantity
FROM orderdetails;

SELECT orderdetails.orderNumber, employees.*,orderdetails.priceEach as price, orderdetails.quantityOrdered as quantity
FROM orderdetails, employees;

SELECT orderdetails.orderNumber,orderdetails.priceEach as price, orderdetails.quantityOrdered as quantity
FROM orderdetails
WHERE price&gt;

SELECT orderdetails.orderNumber,orderdetails.priceEach as price, orderdetails.quantityOrdered as quantity
FROM orderdetails
WHERE priceEach&gt;

SELECT orderdetails.orderNumber,orderdetails.priceEach as price, orderdetails.quantityOrdered as quantity
FROM orderdetails
WHERE price&gt;

SELECT orderdetails.orderNumber,orderdetails.priceEach as price, orderdetails.quantityOrdered as quantity
FROM orderdetails
WHERE priceEach&gt;

SELECT orderdetails.orderNumber,orderdetails.priceEach as price, orderdetails.quantityOrdered as quantity
FROM orderdetails
WHERE priceEach&gt;

SELECT orderdetails.orderNumber,orderdetails.priceEach as price, orderdetails.quantityOrdered as quantity
FROM orderdetails
WHERE NOT priceEach&gt;

SELECT orderdetails.orderNumber,orderdetails.priceEach as price, orderdetails.quantityOrdered as quantity
FROM orderdetails
WHERE NOT (priceEach);

SELECT DISTINCT orderNumber, country, city
FROM orderdetails, offices
WHERE offices.city like 'A%';

SELECT DISTINCT orderNumber, country, city
FROM orderdetails, offices
WHERE offices.city like 'L%';

SELECT  orderNumber, country, city
FROM orderdetails, offices
WHERE offices.city like 'L%';

SELECT  orderNumber, country, city
FROM orderdetails, offices
WHERE offices.city like '_Y%';

SELECT  orderNumber, country, city
FROM orderdetails, offices
WHERE offices.city like '%c';

SELECT orders.*, orderdetails.quantityOrdered * orderdetails.priceEach as total_cost
FROM orders JOIN orderdetails USING(orderNumber)
WHERE comments IS NOT NULL;

SELECT orders.*, orderdetails.quantityOrdered * orderdetails.priceEach as total_cost
FROM orders LEFT JOIN orderdetails USING(orderNumber)
WHERE comments IS NOT NULL;

SELECT orders.*, orderdetails.*
FROM orders LEFT JOIN orderdetails USING(orderNumber)
WHERE comments IS NOT NULL;

SELECT orders.*, orderdetails.*
FROM orders LEFT JOIN orderdetails USING(orderNumber)
WHERE orderNumber IS NULL;

SELECT orders.*, orderdetails.*
FROM orders LEFT JOIN orderdetails USING(orderNumber)
WHERE orders.orderNumber != orderdetails.orderNumber;

SELECT orders.*, orderdetails.*
FROM orders LEFT JOIN orderdetails USING(orderNumber)
WHERE orders.orderNumber = orderdetails.orderNumber;

SELECT orders.*, orderdetails.*
FROM orders LEFT JOIN orderdetails USING(orderNumber)
WHERE orderdetails.orderNumber is NULL;

SELECT orders.*, orderdetails.*
FROM orders LEFT JOIN orderdetails USING(orderNumber);

SELECT orders.*, customers.*
FROM orders LEFT JOIN customers USING(customerNumber)
WHERE customerNumber is NULL;

SELECT orders.*, customers.*
FROM orders LEFT JOIN customers USING(customerNumber);

SELECT orders.*, customers.*
FROM orders JOIN customers USING(customerNumber);

SELECT orders.*, customers.*
FROM orders LEFT JOIN customers 
	USING(customerNumber) 
    JOIN orderDetails using(orderNumber);

SELECT orders.customerNumber, customers.customerNumber, orderdetails.orderNumber
FROM orders LEFT JOIN customers 
	USING(customerNumber) 
    JOIN orderDetails using(orderNumber);

SELECT orders.customerNumber, customers.customerNumber, orderdetails.orderNumber
FROM orders LEFT JOIN customers 
	USING(customerNumber) 
    LEFT JOIN orderDetails using(orderNumber);

SELECT orders.customerNumber, customers.customerNumber, orderdetails.orderNumber
FROM orders LEFT JOIN customers 
	USING(customerNumber) 
    LEFT JOIN orderDetails using(orderNumber);


SELECT COUNT(DISTINCT customers.customerNumber)
FROM customers
WHERE city like 'N%';

SELECT COUNT(DISTINCT customers.customerNumber), city
FROM customers
WHERE city like 'N%';

SELECT COUNT(DISTINCT customers.customerNumber), city
FROM customers join orderdetails
WHERE city like 'N%';

SELECT COUNT(DISTINCT customers.customerNumber), AVG(orderdetails.priceEach * orderdetails.quantityOrdered)
FROM customers JOIN orderDetails
WHERE city like 'N%';

SELECT COUNT(DISTINCT customers.customerNumber), AVG(orderdetails.priceEach * orderdetails.quantityOrdered) as total_cost
FROM customers JOIN orderDetails
WHERE city like 'N%';

SELECT COUNT(DISTINCT customers.customerNumber), AVG(orderdetails.priceEach * orderdetails.quantityOrdered) as total_cost
FROM customers JOIN orderDetails
WHERE city like 'N%';

SELECT COUNT(DISTINCT customers.customerNumber), AVG(orderdetails.priceEach * orderdetails.quantityOrdered) as total_cost
FROM customers JOIN orderDetails
WHERE city NOT like 'N%';

SELECT COUNT(orderNumber), AVG(orderdetails.priceEach * orderdetails.quantityOrdered) as avg_OrderCost,
	SUM(quantityOrdered) as 'all orders',
    SUM(orderdetails.priceEach * orderdetails.quantityOrdered) as total_income
FROM customers JOIN orderDetails
WHERE city NOT like 'N%';

SELECT COUNT(orderNumber), AVG(orderdetails.priceEach * orderdetails.quantityOrdered) as avg_OrderCost,
	COUNT(quantityOrdered) as 'all orders',
    SUM(orderdetails.priceEach * orderdetails.quantityOrdered) as total_income
FROM customers JOIN orderDetails
WHERE city NOT like 'N%';

SELECT COUNT(orderNumber), AVG(orderdetails.priceEach * orderdetails.quantityOrdered) as avg_OrderCost,
	SUM(quantityOrdered) as 'all orders',
    SUM(orderdetails.priceEach * orderdetails.quantityOrdered) as total_income
FROM orderDetails
WHERE city NOT like 'N%';

SELECT orders.customerNumber, customers.customerNumber, orderdetails.orderNumber
FROM orders LEFT JOIN customers 
	USING(customerNumber) 
    LEFT JOIN orderDetails using(orderNumber);

SELECT COUNT(orderNumber), AVG(orderdetails.priceEach * orderdetails.quantityOrdered) as avg_OrderCost,
	SUM(quantityOrdered) as 'all orders',
    SUM(orderdetails.priceEach * orderdetails.quantityOrdered) as total_income
FROM orderDetails;

SELECT COUNT(orderNumber), AVG(orderdetails.priceEach * orderdetails.quantityOrdered) as avg_OrderCost,
	SUM(quantityOrdered) as 'all orders',
    SUM(orderdetails.priceEach * orderdetails.quantityOrdered) as total_income
FROM orderDetails;

SELECT COUNT(orderNumber),
	SUM(quantityOrdered) as 'all orders',
    SUM(orderdetails.priceEach * orderdetails.quantityOrdered) as total_income,
    AVG(orderdetails.priceEach * orderdetails.quantityOrdered) as avg_OrderCost
FROM orderDetails;

SELECT orders.customerNumber, customers.customerNumber, orderdetails.orderNumber,salesRepEmployeeNumber
FROM orders LEFT JOIN customers
	USING(customerNumber) 
    LEFT JOIN orderDetails using(orderNumber);

SELECT customers.customerNumber, COUNT(orderdetails.orderNumber)
FROM customers LEFT JOIN orderdetails using(customerNumber)
GROUP BY customerNumber;

SELECT customers.customerNumber, COUNT(orderdetails.orderNumber)
FROM customers LEFT JOIN orderdetails USING(customerNumber)
GROUP BY customerNumber;

SELECT customers.country, COUNT(customerNumber)
FROM customers
GROUP BY country;

SELECT customers.country, COUNT(customerNumber) as 'customers per country'
FROM customers
GROUP BY country;

SELECT customers.country, COUNT(customerNumber) as 'customers per country'
FROM customers
GROUP BY country;

SELECT customers.country, COUNT(customerNumber) as 'customers per country'
FROM customers
GROUP BY country;

SELECT customers.country, COUNT(customerNumber) as 'customers per country'
FROM customers
GROUP BY country
HAVING COUNT(customerNumber)&lt;

SELECT customers.country, COUNT(customerNumber) as 'customers per country', phone
FROM customers
GROUP BY country
HAVING COUNT(customerNumber)&lt;

SELECT customers.country, COUNT(customerNumber) as 'customers per country', phone
FROM customers
GROUP BY country;

SELECT customers.country, COUNT(customerNumber) as 'customers per country'
FROM customers
GROUP BY country;

SELECT customers.country, COUNT(customerNumber) as 'customers per country'
FROM customers 
GROUP BY country
HAVING COUNT(customerNumber) &gt;

SELECT customers.country, SUM(customers.creditLimit)
FROM customers
GROUP BY country;

SELECT employees.employeeNumber, COUNT(customers.customerNumber)
FROM employees LEFT JOIN customers using(salesRepEmployeeNumber) 
GROUP BY employees.employeeNumber;

SELECT employees.employeeNumber, COUNT(customers.customerNumber)
FROM employees JOIN customers using(salesRepEmployeeNumber) 
GROUP BY employees.employeeNumber;

SELECT employees.employeeNumber, COUNT(customers.customerNumber)
FROM employees JOIN customers
GROUP BY employees.employeeNumber;

SELECT customers.country, SUM(customers.creditLimit)
FROM customers
GROUP BY country;

SELECT employees.employeeNumber, COUNT(customers.customerNumber)
FROM employees LEFT JOIN customers ON(employees.employeeNumber = customers.salesRepEmployeeNumber )
GROUP BY employees.employeeNumber;

SELECT e.employeeNumber, e.firstName, e.lastName, COUNT(c.customerNumber) AS total_orders
FROM employees e
LEFT JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
GROUP BY e.employeeNumber, e.firstName, e.lastName;

SELECT employees.employeeNumber, COUNT(customers.customerNumber)
FROM employees LEFT JOIN customers ON(employees.employeeNumber = customers.salesRepEmployeeNumber )
GROUP BY employees.employeeNumber;

SELECT employees.employeeNumber, employees.firstName, employees.lastName, COUNT(customers.customerNumber) as orders_for_worker
FROM employees
JOIN customers ON(employeeNumber=salesRepEmployeeNumber)
GROUP BY employeeNumber
HAVING orders_for_worker &gt;

SELECT employees.employeeNumber, employees.firstName, employees.lastName, COUNT(customers.customerNumber) as orders_for_worker
FROM employees
JOIN customers ON(employeeNumber=salesRepEmployeeNumber)
GROUP BY employeeNumber
HAVING orders_for_worker &gt;

SELECT employees.employeeNumber, employees.firstName, employees.lastName, COUNT(customers.customerNumber) as orders_for_worker
FROM employees
JOIN customers ON(employeeNumber=salesRepEmployeeNumber)
GROUP BY employeeNumber
HAVING COUNT(customers.customerNumber) &gt;

SELECT c.customerNumber, c.creditLimit
FROM customers c
WHERE c.creditLimit&gt;

SELECT c.customerNumber, c.creditLimit
FROM customers c
WHERE c.creditLimit&gt;

SELECT c.customerNumber, c.creditLimit, Average_Credit
FROM customers c
WHERE c.creditLimit&gt;

SELECT c.customerNumber, c.creditLimit
FROM customers c
WHERE c.creditLimit&gt;

SELECT e.employeeNumber, e.firstName, e.lastName
FROM employees e
WHERE e.salesRepEmployeeNumber IN(SELECT salesRepEmployeeNumber as worker FROM customers WHERE worker IS NOT NULL);

SELECT e.employeeNumber, e.firstName, e.lastName
FROM employees e
WHERE e.salesRepEmployeeNumber IN(SELECT salesRepEmployeeNumber as worker FROM customers WHERE worker != NULL);

SELECT e.employeeNumber, e.firstName, e.lastName
FROM employees e
WHERE e.salesRepEmployeeNumber IN(SELECT salesRepEmployeeNumber as worker FROM customers WHERE worker IS NOT NULL);

SELECT e.employeeNumber, e.firstName, e.lastName
FROM employees e
WHERE employeeNumber IN(SELECT salesRepEmployeeNumber as worker FROM customers WHERE worker IS NOT NULL);

SELECT e.employeeNumber, e.firstName, e.lastName
FROM employees e
WHERE employeeNumber IN(SELECT salesRepEmployeeNumber as worker FROM customers WHERE salesRepEmployeeNumber IS NOT NULL);

SELECT productName, productCode, MSRP, MAX(MSRP) OVER() AS maxPrice
FROM products
WHERE MSRP = MAX(MSRP);

SELECT productName, productCode, MSRP
FROM products
WHERE MSRP = MAX(MSRP);

SELECT productName, productCode, MSRP, MAX(MSRP) OVER() AS maxPrice
FROM products
WHERE MSRP = MAX(MSRP);

SELECT productName, productCode, MSRP, MAX(MSRP) OVER() AS maxPrice
FROM products
GROUP BY productName;

SELECT productName, maxPrice
FROM (SELECT productName, productCode, MSRP, MAX(MSRP) OVER() AS maxPrice
FROM products) t1
WHERE MSRP&gt;

SELECT productName, maxPrice
FROM (SELECT productName, productCode, MSRP, MAX(MSRP) OVER() AS maxPrice
FROM products) t1
WHERE MSRP = maxPrice;

SELECT productName, productCode, MSRP, MAX(MSRP) OVER() AS maxPrice
FROM products;

SELECT e.employeeNumber, e.firstName, e.lastName
FROM employees e
WHERE employeeNumber IN(SELECT salesRepEmployeeNumber as worker FROM customers WHERE salesRepEmployeeNumber IS NOT NULL);

SELECT productName, productCode, MSRP, MAX(MSRP) OVER() AS maxPrice
FROM products
WHERE MSRP = maxPrice;

SELECT orders.*
FROM orders JOIN orderdetails USING(orderNumber)
WHERE comments IS NOT NULL;

SELECT *
FROM orders;

SELECT productName, maxPrice
FROM (SELECT productName, productCode, MSRP, MAX(MSRP) OVER() AS maxPrice
FROM products) t1 
WHERE MSRP = maxPrice;

SELECT employees.employeeNumber, employees.firstName, employees.lastName, COUNT(customers.customerNumber) as orders_for_worker
FROM employees, customers
GROUP BY employeeNumber
HAVING orders_for_worker &gt;


