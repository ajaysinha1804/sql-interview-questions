-- ajaysinha
-- Question Name : 181. Employees Earning More Than Their Managers
-- Question URL  : https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
-- My Approach   :  
-- As the We are having single table but question suggest(Foreign Key) that we need to perform Join so use Self join on The given Table itself
-- We can solve this problem using both left join and aswell as inner join
-- Apply condition ON e.managerId=m.id , WHERE e.salary>m.salary to get employees who's salary is greater than their manager's salary
-- And check the output format that is given to print column name as Employee so, use alias here
-- Code          :

SELECT e.name AS Employee
From Employee e
INNER JOIN Employee m
ON e.managerId=m.id
WHERE e.salary>m.salary
