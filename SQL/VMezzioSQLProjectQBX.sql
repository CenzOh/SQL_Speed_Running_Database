Single DML file with ALL QB's

---- QB1 ----

--Queries, look for player named 'Taggo'
SELECT *
FROM player
WHERE name = 'Taggo';

--look for game released past 2000
SELECT *
FROM game
WHERE yearreleased > 2000;

--look for all categories that belong to 'Super Mario 64'
SELECT *
FROM gamecategory
WHERE gamename_fk = 'Super Mario 64';

--look for the player 'Cheese''s records
SELECT *
FROM leaderboard
WHERE playername_fk = 'Cheese';

---- QB2 ----

--Queries from two tables
-- Look for objectives of games with the Any% category made after 2010
SELECT gamename_fk, objectives
FROM gamecategory as c, game as g
WHERE g.yearreleased > 2010
AND c.category = 'Any%'

--Look for for the names of players who placed first in a game from the super mario series
SELECT playername_fk, category_fk, gamename_fk
FROM leaderboard as l, game as g
WHERE g.series = 'Super Mario Series'
AND l.placement = '1st'

--Look for the time of a speedrun that is verified and moderated by Maosfx
SELECT time
FROM leaderboard as l, gamecategory as c
WHERE c.moderators = 'Maosfx'
AND l.verified = 'true'

--Look for the name of the category that the playe Cheese placed first in
SELECT category_fk
FROM leaderboard as l, player as p
WHERE p.name = 'Cheese'
AND l.placement = '1st'

--look for the location of a player who has a speedrun on the N64 platform and was published in December 
SELECT location
FROM player as p, leaderboard as l
WHERE l.platform = 'N64' 
AND l.publishdate LIKE '12%'

--look for the publishdate of a speedrun that is moderated by GothicLogic and the category is 120 stars
SELECT publishdate
FROM leaderboard as l, gamecategory as c
WHERE c.moderators = 'GothicLogic'
AND l.category_fk = '120 Stars'

---- QB3 ----

--queries with basic aggregates
--count the number of runs that are Super Mario 64
SELECT COUNT(gamename_fk) AS "Super Mario 64 Records"
FROM leaderboard
WHERE gamename_fk = 'Super Mario 64';

--calculate the avergae year of the games release
SELECT AVG(yearreleased) as "Avergae Year of Games Release"
FROM game;

--get the number of categories from each game, group them with similar values in the number of categories column
SELECT COUNT(category_fk) AS "Number of Categories", gamename_fk 
FROM leaderboard
GROUP BY gamename_fk;

---- QB4 ----

--aggregates with conditions
--Select the names of game with two or more categories
SELECT gamename_fk
FROM leaderboard
GROUP BY gamename_fk
HAVING COUNT( category_fk) >= 2

--Select the names of players from places that start with M and list the number of runs they have on the leaderboard
SELECT name, COUNT(gamename_fk) AS "Number_of_Runs"
FROM player, leaderboard
WHERE player.name = leaderboard.playername_fk
AND location LIKE 'M%'
GROUP BY name
HAVING COUNT(gamename_fk) >= 1

--Select the number of verified runs that are in a category that start with the letter A
SELECT COUNT(verified) AS "Number_of_Verified_Runs_in_Categories_Starting_with_A"
FROM leaderboard
WHERE category_fk LIKE 'A%'
AND verified = 'true'
GROUP BY verified
HAVING COUNT(verified) >= 2

---- QB5 ----

--Select gamenames with no restrictions
SELECT category AS "Category_without_Restrictions", COUNT(gamename_fk) AS "Number_of_Game"
FROM gamecategory AS g
WHERE gameplayrestrictions LIKE 'None%'
GROUP BY category
HAVING COUNT(gamename_fk) > 0

--Count number of categories in each game
SELECT gamename_fk, COUNT(*) AS "Number_of_categories"
FROM gamecategory 
GROUP BY gamename_fk
HAVING COUNT(*) > 0

--Select the number of second place 
SELECT verified, COUNT(*) AS "number_of_verified_second_place_records"
FROM leaderboard
WHERE placement LIKE '2nd'
GROUP BY verified
HAVING COUNT(*) > 1