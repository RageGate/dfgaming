-- Drop Vehicle Support
DROP TABLE IF EXISTS `vehicle_data`;
DROP TABLE IF EXISTS `vehicle_seat_data`;

ALTER TABLE `creature_addon`
		DROP `vehicle_id`,
		DROP `passangers`;
		
ALTER TABLE `creature_addon_template`
		DROP `vehicle_id`,
		DROP `passangers`;
