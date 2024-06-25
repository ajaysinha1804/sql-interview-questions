-- ajaysinha
-- Question Name : 595. Big Countries
-- Question URL  : https://leetcode.com/problems/big-countries/description/
-- My Approach   :
-- simply apply the where condition and by using OR operator retrieve the name,area and population of a big country
-- A country is big if:
-- it has an area of at least three million (i.e., 3000000 km2), or
-- it has a population of at least twenty-five million (i.e., 25000000). 

-- code :
select name,population,area
from World
where area>= 3000000 or population>=25000000
