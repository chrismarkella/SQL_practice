-- You returned from vacation with a huge suitcase full of presents. 
-- Unfortunately, you forgot the correct combination for the combination 
-- lock on the bag, and now you have to try all of them until you find 
-- the correct one. You're curious about how many possible combinations 
-- the lock has.

-- The combination lock consists of several rotating discs, 
-- where each disc has its own set of possible characters. 
-- You have a table discs which stores the information about these discs and 
-- has the following structure:

--     id: the unique ID of a disc;
--     characters: the list of characters the disc has 
--                 (the characters are guaranteed to be unique);
--     color: the color of the disc.

-- Calculate the total number of all possible combinations that the lock has, 
-- and return it as a table that has only one column combinations and one row.

SELECT  round(exp(SUM(LOG(length(characters)))),0) AS combinations 
FROM discs;
