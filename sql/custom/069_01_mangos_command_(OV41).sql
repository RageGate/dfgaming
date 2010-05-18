# add .keks command
DELETE FROM `command` WHERE `name` = "keks";
INSERT INTO `command` VALUES("keks",0,"Syntax: .keks gibt dem Ziel im Fokus einen Keks.");