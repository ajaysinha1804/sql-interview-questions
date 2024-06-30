
-- ajaysinha
-- Question Name : 627. Swap Salary
-- Question URL  : https://leetcode.com/problems/swap-salary/description/
-- My Approach   :
-- change all 'f' values to 'm' and vice versa with a single update statement
-- code :
UPDATE Salary
SET sex = CASE WHEN sex='m' THEN 'f'
WHEN sex='f' THEN 'm' END 