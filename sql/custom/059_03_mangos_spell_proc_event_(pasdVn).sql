/*Entrapment*/
DELETE FROM `spell_proc_event` WHERE entry IN (19184, 19387, 19388);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(19184, 0, 9, 0, 0x2000, 0x40000, 0, 0, 0, 0, 0);
