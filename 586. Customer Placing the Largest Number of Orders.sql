-- ajaysinha
-- Question Name : 586. Customer Placing the Largest Number of Orders
-- Question URL  : https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/
-- My Approach   :
-- Approach:
-- when we encounter this type of problem first we will group by customer_number so that the table will have customer_number with number of orders they have
-- but this approach will fail when the two customers with same number of orders
-- then the best approach is to make use of common table expression so that it will store the customer_number with their respective number of orders
-- finally retrieve All the customers whose number of orders are equal to max(numberOfOrders) of cutomers

-- code :
with cte as
(
select customer_number,count(order_number) as numberOfOrders
from Orders
group by customer_number
)

select customer_number
from cte
where numberOfOrders = (select max(numberOfOrders) from cte)
