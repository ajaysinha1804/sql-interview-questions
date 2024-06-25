-- ajaysinha
-- Question Name : 596. Classes More Than 5 Students
-- Question URL  : https://leetcode.com/problems/classes-more-than-5-students/description/
-- My Approach   :
-- Here we need to return the classes whose having more than 5 students. 
-- So, firstly we need to group by class 
-- so that each row will consists of a class and their respective number of students in that class
-- then use the having to obtain a condition as here we using aggregate classes in it

-- code :

select class
from Courses
group by class
having count(student)>=5