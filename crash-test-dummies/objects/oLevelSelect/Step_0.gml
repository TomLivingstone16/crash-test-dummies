if (keyboard_check_pressed(global.downKey) or keyboard_check_pressed(global.upKey))
{
	selectedOption += (keyboard_check_pressed(global.downKey) - keyboard_check_pressed(global.upKey))
	audio_play_sound(sndMenuNavigation,8,false)
}
if selectedOption < 0
{
	selectedOption = global.levelsUnlocked
}
else if selectedOption > global.levelsUnlocked
{
	selectedOption = 0
}

if keyboard_check_pressed(global.interactKey)
{
	show_debug_message(RoomToName(global.levelprogression[selectedOption]))
	RoomTransition(global.levelprogression[selectedOption])
}

