/* Waylay */
DELETE FROM `spell_proc_event` WHERE `entry` IN (51692,51696);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('51692','0','8','516','0','0','0','0','0','0','0'),
('51696','0','8','516','0','0','0','0','0','0','0');