-- ajaysinha
-- Question Name : 183. Customers Who Never Order
-- Question URL  : https://leetcode.com/problems/customers-who-never-order/description/
-- My Approach   :
-- Approach 1    :
-- Firstly combine both the Customers and Orders table and try to find out the Null values in the place of order id value if it is null value then return the customer name from the customer table

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o 
ON c.id=o.customerId
WHERE o.id is Null


-- Approach 2    :
-- Combine both the tables using inner join and extract the customer names from the the table those who have ordered something and exclude those names
-- Finally return the names which are not excluded

SELECT c1.name AS Customers
FROM Customers c1
WHERE c1.id NOT IN
(SELECT c.id
FROM Customers c
INNER JOIN Orders o
ON c.id=o.customerId)