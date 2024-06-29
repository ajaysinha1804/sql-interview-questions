
-- ajaysinha
-- Question Name : 620. Not Boring Movies
-- Question URL  : https://leetcode.com/problems/not-boring-movies/description/
-- My Approach   :
-- select all the columns which are having the id as odd value(mod(id,2) or (id%2)<>0)
-- and movie description shoud not be "boring"(description <> "boring")
-- we have to return it in the descending order of the rating column

-- code :
select *
from Cinema
where mod(id,2)<> 0 and description<>"boring"
order by rating desc