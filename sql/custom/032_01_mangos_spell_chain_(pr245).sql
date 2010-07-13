/*Ebon Plaguebringer*/
DELETE FROM spell_chain WHERE spell_id IN (51099, 51160, 51161);
INSERT INTO spell_chain VALUES
(51099, 0, 51099, 1, 0),
(51160, 51099, 51099, 2, 0),
(51161, 51160, 51099, 3, 0);

/*Crypt Fever*/
DELETE FROM spell_chain WHERE spell_id IN (49032, 49631, 49632);
INSERT INTO spell_chain VALUES
(49032, 0, 49032, 1, 0),
(49631, 49032, 49032, 2, 0),
(49632, 49631, 49032, 3, 0);

/*Wandering Plague*/
DELETE FROM spell_chain WHERE spell_id IN (49217, 49654, 49655);
INSERT INTO spell_chain VALUES
(49217, 0, 49217, 1, 0),
(49654, 49217, 49217, 2, 0),
(49655, 49654, 49217, 2, 0);