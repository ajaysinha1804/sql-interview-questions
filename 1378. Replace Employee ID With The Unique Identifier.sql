-- ajaysinha
-- Question Name : 1378. Replace Employee ID With The Unique Identifier
-- Question URL  : https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/
-- My Approach   :
-- since we need to join the both table and we need every value from left table then
-- use left join based on the column which is same(id)
-- left join returns value if it finds the match otherwise it will return null
-- by considering the output format change the column name accordingly

-- code :

select eu.unique_id,e.name
from Employees e
left join EmployeeUNI eu
on e.id=eu.id
