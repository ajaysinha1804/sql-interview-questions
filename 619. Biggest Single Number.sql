
-- ajaysinha
-- Question Name : 619. Biggest Single Number
-- Question URL  : https://leetcode.com/problems/biggest-single-number/description/
-- My Approach   :
-- Firstly group the columns group by num
-- then segregate the columns which are appearing only once
-- with the hwlp of common table expressions and case when then method extract the columns
-- if there are columns with appearing only once is exists then Then find the max of the num
-- else return the null

-- code :
with cte as
(select num
from MyNumbers
group by num
having count(num)=1)

select case when count(*)>0 
then max(num) else null 
end as num
from cte