-- ajaysinha
-- Question Name : 183. Customers Who Never Order
-- Question URL  : https://leetcode.com/problems/customers-who-never-order/description/
-- My Approach   :
-- Firstly combine both the Customers and Orders table and try to find out the Null values in the place of order id value if it is null value then return the customer name from the customer table

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o 
ON c.id=o.customerId
WHERE o.id is Null