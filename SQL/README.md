Initial SQL code and database. Completed in April 2021. Database Design has most updated database.
# Description
Gamers who play video games with the intent to complete them as fast as possible can film themselves playing the game and publish it onto a leaderboard database to compare with other gamers. Gamers can view each other’s statistics to compare as well as submit their performance to compete with other gamers on the database.
# Database Schema
**KEY:** *Primary Key is italicized*, Foreign Key is listed as "FK" \
**Player** (ID, Name, Location) \
	- Shows basic information about the player such as their name and the country they live in. Each player has a unique ID.
GameCategory (ID, GameName_FK, Category, Moderators, Objectives, Gameplay_Restrictions) \
	Information about the game’s speed running category. Moderators list name of player(s) who moderate that category.  Objectives will be a string explaining what the player must do in this category. Gameplay Restrictions will be a string describing what the player is not allowed to do within the category. \
Leaderboard (ID, GameName_FK, Category_FK, PlayerName_FK, Placement, Time, Platform, Verified, PublishDate) \
	Leaderboard information lists out all the players who submitted their performance for the specific game and category. This also lists out the player’s names, where they are placed on the leaderboard (should be a unique value and is required), their time for the performance (required), which platform they are playing the game on, if the performance is verified, and when the run was published (required). \
Game (ID, GameName, Series, YearReleased, Platform) \
	Displays basic information about the game such as the name of the game, what series it is from (to connect it to other leaderboards of a similar game), when the game was released as well as the platform the game was released on. \

