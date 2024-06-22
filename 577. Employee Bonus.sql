-- ajaysinha
-- Question Name : 577. Employee Bonus
-- Question URL  : https://leetcode.com/problems/employee-bonus/description/
-- My Approach   :
-- Approach:
-- 1. Use a query to get the employee_id and bonus from the bonuses table.
-- 2. where employee bonus should be less than 1000.
-- 3. make use of left join to merge two tables then two rows(empid,bonus) will be added to it
-- 4. and finally return the employee name and bonus where bonus is less than 1000 and aswell as whose binus is null
-- code          :

select e.name,b.bonus
FROM Employee e
left join Bonus b 
on e.empId=b.empId 
where b.bonus<1000 or b.bonus is null