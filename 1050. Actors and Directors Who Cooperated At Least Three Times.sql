-- ajaysinha
-- Question Name : 1050. Actors and Directors Who Cooperated At Least Three Times
-- Question URL  : https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/description/
-- My Approach   :
-- Group by the actor_id and director_id and consider those rows....
-- which are having the count of timestamp values is atleast three

-- code :
SELECT actor_id,director_id
FROM ActorDirector
GROUP BY actor_id,director_id
HAVING COUNT(timestamp)>=3
