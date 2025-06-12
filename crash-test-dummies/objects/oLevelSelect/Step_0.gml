if ((keyboard_check_pressed(global.downKey) or keyboard_check_pressed(global.upKey)) && settingName = false) 
{
	selectedOption += (keyboard_check_pressed(global.downKey) - keyboard_check_pressed(global.upKey))
	audio_play_sound(sndMenuNavigation,8,false)
}
if selectedOption < 0
{
	selectedOption = global.levelsUnlocked + 1
}
else if selectedOption > global.levelsUnlocked + 1 
{
	selectedOption = 0
}

if keyboard_check_pressed(global.interactKey) && selectedOption != global.levelsUnlocked + 1
{
	show_debug_message(RoomToName(global.levelprogression[selectedOption]))
	RoomTransition(global.levelprogression[selectedOption])
}
else if keyboard_check_pressed(global.interactKey) && selectedOption == global.levelsUnlocked + 1 && settingName == false
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
	}
}