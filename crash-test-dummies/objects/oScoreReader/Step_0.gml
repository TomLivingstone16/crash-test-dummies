if keyboard_check_pressed(global.interactKey) && settingName == false && scoreSet == false
{
	settingName = true
	keyboard_string = ""
}


if settingName = true
{
	if keyboard_check_pressed(vk_escape) settingName = false
	
	if string_length(keyboard_string) <= 3 storedName = keyboard_string else keyboard_string = storedName
	
	var _name = string_upper(storedName) // in local variable to protect against enter deleting the string, also capitalize
	if keyboard_check_pressed(global.interactKey) && _name != ""
	{
		SaveGame(_name)
		settingName = false
		global.score = {
			testLevel : 0,
			testLevel2 : 0,
			level1 : 0,
			level2 : 0,
			level3 : 0,
			level4 : 0,
			level5 : 0
			};
		
		scoreSet = true
	}
}

if keyboard_check_pressed(global.backKey) && settingName == false
{
	RoomTransition(rLevelSelect)
}