if (keyboard_check_pressed(global.downKey) or keyboard_check_pressed(global.upKey))
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

if keyboard_check_pressed(global.interactKey) && selectedOption == global.levelsUnlocked + 1
{
	RoomTransition(rScoreRoom)
}