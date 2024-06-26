
-- ajaysinha
-- Question Name : 610. Triangle Judgement
-- Question URL  : https://leetcode.com/problems/triangle-judgement/description/
-- My Approach   :
-- select the all the columns from the triangle table and also create extra column as triangle
-- which can describes about is it possible to form triangle with the given line segments
-- conidtion is: the sum of two line segemnet is greater than the other line segemnet then
-- it is possible to form triangle 
-- ex; x,y,z line segemnets
-- if x+y > z and y+z>x and x+z>y then it is possible to form triangle
-- use CASE WHEN THEN method
-- code :

select *, CASE WHEN x+y>z AND y+z>x AND x+z>y THEN 'Yes'
ELSE 'No' END AS triangle
from Triangle