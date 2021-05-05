--remove tables
DROP TABLE player;
DROP TABLE gamecategory;
DROP TABLE leaderboard;
DROP TABLE game;

--remove data
DELETE FROM player;
DELETE FROM gamecategory;
DELETE FROM leaderboard;
DELETE FROM game;

CREATE TABLE player (
	player_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) --always increases by 1
	, name VARCHAR(50) NOT NULL UNIQUE
	, location VARCHAR(50)
	, CONSTRAINT pk_player PRIMARY KEY (player_id, name) --id and name are pk
	);


CREATE TABLE game (
	game_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1)
	, gamename VARCHAR(50) NOT NULL 
	, series VARCHAR(50)
	, yearreleased INT 
	, platform VARCHAR(10)
	, CONSTRAINT pk_game PRIMARY KEY (game_id, gamename)
	);

CREATE TABLE gamecategory (
	category_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1)
	, gamename_fk VARCHAR(50) NOT NULL
	, category VARCHAR(20) NOT NULL
	, moderators VARCHAR(50)
	, objectives VARCHAR(50)
	, gameplayrestrictions VARCHAR(50)
	, CONSTRAINT pk_gamecategory PRIMARY KEY(category_id, category) 
	);

CREATE TABLE leaderboard (
	leaderboard_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1)
	, gamename_fk VARCHAR(50) NOT NULL
	, category_fk VARCHAR(20) NOT NULL
	, placement VARCHAR(5)
	, playername_fk VARCHAR(50) NOT NULL
	, time VARCHAR(11) NOT NULL
	, platform VARCHAR(10)
	, verified BOOLEAN
	, publishdate VARCHAR(8)
	, CONSTRAINT fk_player FOREIGN KEY (playername_fk) REFERENCES player(name)
	);
