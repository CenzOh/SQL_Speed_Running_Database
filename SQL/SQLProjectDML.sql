--inserting values into tables
INSERT INTO player (name,location) VALUES ('Cheese', 'Madrid, Spain');
INSERT INTO player (name,location) VALUES ('Simply', 'Minnesota, USA');
INSERT INTO player (name,location) VALUES ('Taggo', 'Norrbotten, Sweden');
INSERT INTO player (name,location) VALUES ('Tyron18', 'Sardinia, Italy');
INSERT INTO player (name,location) VALUES ('Buhbai', 'England, UK');

INSERT INTO game (gamename, series, yearreleased, platform) VALUES ('Super Mario 64', 'Super Mario Series', 1996, 'N64');
INSERT INTO game (gamename, series, yearreleased, platform) VALUES ('Celeste', 'Celeste Series', 2018, 'PC');
INSERT INTO game (gamename, series, yearreleased, platform) VALUES ('Super Mario Odyssey', 'Super Mario Series', 2017, 'Switch');

INSERT INTO gamecategory (gamename_fk, category, moderators, objectives, gameplayrestrictions) VALUES ('Super Mario 64', '120 Stars', 'GothicLogic', 'Collect all 120 stars and beat the game', 'None');
INSERT INTO gamecategory (gamename_fk, category, moderators, objectives, gameplayrestrictions) VALUES ('Super Mario 64', '70 Stars', 'Maosfx', 'Beat the game', 'All forms of BLJ are banned');
INSERT INTO gamecategory (gamename_fk, category, moderators, objectives, gameplayrestrictions) VALUES ('Celeste', 'Any%', 'Marlin', 'Unlock the Epilogue from a new file', 'None');
INSERT INTO gamecategory (gamename_fk, category, moderators, objectives, gameplayrestrictions) VALUES ('Super Mario Odyssey', 'Any%', 'Dry_Yoshi', 'Beat the game', 'Use of Amiibo and Assist Mode are banned');
INSERT INTO gamecategory (gamename_fk, category, moderators, objectives, gameplayrestrictions) VALUES ('Super Mario Odyssey', 'World Peace', 'Tech', 'Bring Peace to every Kingdom and beat the game', 'Use of Amiibo and Assist Mode are banned');

INSERT INTO  leaderboard (gamename_fk, category_fk, placement, playername_fk, time, platform, verified, publishdate) VALUES ('Super Mario 64', '120 Stars', '1st', 'Cheese', '1:38:25', 'N64', TRUE, '1/31/21'); 
INSERT INTO  leaderboard (gamename_fk, category_fk, placement, playername_fk, time, platform, verified, publishdate) VALUES ('Super Mario 64', '70 Stars', '2nd', 'Taggo', '47:18', 'N64', TRUE, '12/24/20'); 
INSERT INTO  leaderboard (gamename_fk, category_fk, placement, playername_fk, time, platform, verified, publishdate) VALUES ('Super Mario Odyssey', 'World Peace', '2nd', 'Tyron18', '1:12:41', 'Switch', TRUE, '9/26/20'); 
INSERT INTO  leaderboard (gamename_fk, category_fk, placement, playername_fk, time, platform, verified, publishdate) VALUES ('Super Mario Odyssey', 'Any%', '2nd', 'Tyron18', '57:46', 'Switch', TRUE, '1/15/21'); 
INSERT INTO  leaderboard (gamename_fk, category_fk, placement, playername_fk, time, platform, verified, publishdate) VALUES ('Celeste', 'Any%', '1st', 'Buhbai', '26:29', 'PC', TRUE, '2/15/21'); 
