-- ajaysinha
-- Question Name : 182. Duplicate Emails
-- Question URL  : https://leetcode.com/problems/duplicate-emails/description/
-- My Approach   :  
-- To find out the duplicate Emails in the Person Table, First we need to group by the rows based upon Email column
-- As a result, For each of the distinct values of Email it will make groups
-- Now we can easily findout the rows which are having more than 1 id values
-- To use condition we can choose either Having or WHERE  but as here we are using Aggreagte function(COUNT) so,we will go with Having
-- Query:

SELECT email as Email
FROM Person
GROUP BY email
HAVING COUNT(DISTINCT id)>1