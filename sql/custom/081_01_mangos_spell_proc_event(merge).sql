/*Reapply all custom sql's because of table drop in 10156_03_mangos_spell_proc_event.sql.*/

/*Judgement of Light/Wisdom*/
DELETE FROM spell_proc_event WHERE entry IN (20185, 20186);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(20185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, 0),
(20186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, 0);

/*Kill Command*/
DELETE FROM spell_proc_event WHERE entry IN (58914);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('58914', '0', '9', '0', '0', '0', '268435456', '0', '0', '0', '0', '0', '332048', '0', '0', '0', '0');

/*Reckoning - Last rank also procs on full block.*/
DELETE FROM `spell_proc_event` WHERE entry IN (20177, 20179, 20181, 20180, 20182);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(20182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x0000040, 0, 0, 0);

/*Fingers of Frost*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (44543,44545);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(44543, 0, 3, 33555104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0),
(44545, 0, 3, 33555104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0);

/*Enrage - Entries are obviously not nedded*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (12317,13045,13046,13047,13048);

/*Unbridled Wrath*/
UPDATE `spell_proc_event` SET `ppmRate` = 3 WHERE `entry` = 12322;
UPDATE `spell_proc_event` SET `ppmRate` = 6 WHERE `entry` = 12999;
UPDATE `spell_proc_event` SET `ppmRate` = 9 WHERE `entry` = 13000;
UPDATE `spell_proc_event` SET `ppmRate` = 12 WHERE `entry` = 13001;
UPDATE `spell_proc_event` SET `ppmRate` = 15 WHERE `entry` = 13002;

/*Entrapment*/
DELETE FROM `spell_proc_event` WHERE entry IN (19184, 19387, 19388);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(19184, 0, 9, 0, 0, 0, 0x2000, 0, 0, 0x40000, 0, 0, 0, 0, 0, 0, 0);

/*Lock and Load*/
DELETE FROM `spell_proc_event` WHERE entry IN (56342, 56343, 56344);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(56342, 0, 9, 0x8, 0x4, 0, 0, 0x8000000, 0, 0x40000, 0x20000, 0, 0, 0, 0, 0, 0);

/*Improved Cower*/
DELETE FROM `spell_proc_event` WHERE entry IN (53180, 53181);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('53180', '0', '9', '0', '0', '0', '268435456', '0', '0', '0', '0', '0', '16', '0', '0', '0', '0'),
('53181', '0', '9', '0', '0', '0', '268435456', '0', '0', '0', '0', '0', '16', '0', '0', '0', '0');

/*Guard Dog*/
DELETE FROM `spell_proc_event` WHERE entry IN (53178, 53179);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('53178', '0', '9', '0', '0', '0', '268435456', '0', '0', '0', '0', '0', '65536', '0', '0', '0', '0'),
('53179', '0', '9', '0', '0', '0', '268435456', '0', '0', '0', '0', '0', '65536', '0', '0', '0', '0');

/*Silverback*/
DELETE FROM `spell_proc_event` WHERE entry IN (62764, 62765);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('62764', '0', '9', '0', '0', '0', '268435456', '0', '0', '0', '0', '0', '65536', '0', '0', '0', '0'),
('62765', '0', '9', '0', '0', '0', '268435456', '0', '0', '0', '0', '0', '65536', '0', '0', '0', '0');

/* Unholy Blight*/
DELETE FROM `spell_proc_event` WHERE `entry` = 49194;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(49194, 0, 15, 0x00002000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/*Ebon Plaguebringer*/
DELETE FROM spell_proc_event WHERE entry IN (51099, 51160, 51161);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(51099, 0, 15, 0, 0, 0, 100663296, 0, 0, 0, 0, 0, 16, 0, 0, 100, 0);

/*Crypt Fever*/
DELETE FROM spell_proc_event WHERE entry IN (49032, 49631, 49632);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(49032, 0, 15, 0, 0, 0, 100663296, 0, 0, 0, 0, 0, 16, 0, 0, 100, 0);

/*Wandering Plague*/
DELETE FROM spell_proc_event WHERE entry IN (49217, 49654, 49655);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(49217, 0, 15, 0, 0, 0, 100663296, 0, 0, 0, 0, 0, 262144, 0, 0, 100, 0);

/*King of the Jungle*/
DELETE FROM spell_proc_event WHERE entry IN (48492,48494,48495);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(48492, 0, 7, 524288, 0, 0, 0, 0, 0, 0, 2048, 0, 16384, 0, 0, 100, 0);

/*Waylay*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (51692,51696);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMaskA0`, `SpellFamilyMaskA1`, `SpellFamilyMaskA2`, `SpellFamilyMaskB0`, `SpellFamilyMaskB1`, `SpellFamilyMaskB2`, `SpellFamilyMaskC0`, `SpellFamilyMaskC1`, `SpellFamilyMaskC2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(51692, 0, 8, 512, 512, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);