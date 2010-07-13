-- King of the Jungle
DELETE FROM spell_chain WHERE spell_id IN (48492,48494,48495);
INSERT INTO spell_chain VALUES
(48492, 0, 48492, 1, 0),
(48494, 48492, 48492, 2, 0),
(48495, 48494, 48492, 3, 0);
