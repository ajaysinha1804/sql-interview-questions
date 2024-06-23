-- ajaysinha
-- Question Name : 584. Find Customer Referee
-- Question URL  : https://leetcode.com/problems/find-customer-referee/description/
-- My Approach   :
-- Approach:
-- select the ID'S whose referee_id is not 2 where it can be null from the Customer table
-- code

select name
from Customer
where referee_id !=2 or referee_id is null
