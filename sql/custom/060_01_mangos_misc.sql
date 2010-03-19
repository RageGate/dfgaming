-- Drop Vehicle Support
DROP TABLE IF EXISTS `vehicle_data`;
DROP TABLE IF EXISTS `vehicle_seat_data`;

ALTER TABLE `creature_addon`
		DROP `vehicle_id`,
		DROP `passengers`;

ALTER TABLE `creature_template_addon`
		DROP `vehicle_id`,
		DROP `passengers`;
