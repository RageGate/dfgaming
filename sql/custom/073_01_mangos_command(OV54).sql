UPDATE `command` SET `help` = "Syntax: .quest add #quest_id or .quest add $playername #quest_id

Add to character quest log quest #quest_id. Quest started from item can't be added by this command but correct .additem call provided in command output." 
WHERE `name` = "quest add";

UPDATE `command` SET `help` = "Syntax: .quest remove #quest_id or .quest remove $playername #quest_id

Set quest #quest_id state to not completed and not active (and remove from active quest list) for selected player." 
WHERE `name` = "quest remove";

UPDATE `command` SET `help` = "Syntax: .quest complete #questid or .quest complete $playername #quest_id

Mark all quest objectives as completed for target character active quest. After this target character can go and get quest reward." 
WHERE `name` = "quest complete";
