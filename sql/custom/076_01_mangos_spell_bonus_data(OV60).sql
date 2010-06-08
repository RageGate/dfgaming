-- Flametongue Weapon Attack; woraround sp scaling is hardcoded in the core
DELETE FROM `spell_bonus_data` WHERE `entry` = 10444;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `comments`) VALUES ('10444', '0', '0', '0', 'Shaman - Flametongue Attack (proc)');
