-- Animal Handler
DELETE FROM `spell_pet_auras` WHERE spell IN (34453, 34454);
INSERT INTO `spell_pet_auras` (`spell`, `effectId`, `pet`, `aura`) VALUES
(34453, 1, 0, 68361),
(34454, 1, 0, 68361);
