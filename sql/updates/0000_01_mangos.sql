ALTER TABLE db_version CHANGE COLUMN required_9262_01_mangos_quest_template required_0000_01_mangos bit;

ALTER TABLE `gossip_menu_option` CHANGE `cond_1_val_2` `cond_1_val_2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `cond_2_val_2` `cond_2_val_2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `cond_3_val_2` `cond_3_val_2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';

ALTER TABLE `creature_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `fishing_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `gameobject_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `item_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `mail_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `milling_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `pickpocketing_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `prospecting_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `reference_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `skinning_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
ALTER TABLE `spell_loot_template` CHANGE `condition_value2` `condition_value2` MEDIUMINT( 8 ) NOT NULL DEFAULT '0';
