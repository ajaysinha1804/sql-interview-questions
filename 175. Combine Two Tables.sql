-- Question Name : 175. Combine Two Tables
-- Question URL  : https://leetcode.com/problems/combine-two-tables/description/
-- My Approach   :  
-- Selecting Columns: The query selects 'LastName' and 'FirstName' from the 'Person' table (p), and 'city' and 'state' from the 'Address' table (a).
-- LEFT JOIN        : A LEFT JOIN ensures all records from the 'Person' table are included, even if there are no matching records in the 'Address' table.
-- The condition ON p.PersonId = a.PersonId specifies the relationship between the tables, using the common 'PersonId' column.

-- Query:

SELECT p.LastName,p.FirstName,a.city,a.state
FROM Person P
LEFT JOIN Address a
on p.PersonId=a.PersonId