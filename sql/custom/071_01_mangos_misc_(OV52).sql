-- Auch eher inhaltlich. Pet Talent Reset option.
UPDATE `gossip_menu_option` SET `option_id` = '1', `action_script_id` = '20002', `box_text` = 'Wollt Ihr wirklich die Talente eures Begleiters verlernen?', `cond_1` = '14', `cond_1_val_2` = '256' WHERE `menu_id` = 0 AND `id` = 15;
INSERT INTO `gossip_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `x`, `y`, `z`, `o`) VALUES
('20002', '0', '15', '46331', '8', '0', '0', '0', '0', '0', '0', '0', '0');
