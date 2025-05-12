if (keyboard_check_pressed(global.downKey) or keyboard_check_pressed(global.upKey))
{
	selectedOption += (keyboard_check_pressed(global.downKey) - keyboard_check_pressed(global.upKey))
	audio_play_sound(sndMenuNavigation,8,false)
}
if selectedOption < 0
{
	selectedOption = array_length(global.levelprogression) -1
}
else if selectedOption > array_length(global.levelprogression) -1
{
	selectedOption = 0
}

if keyboard_check_pressed(global.interactKey)
{
	RoomTransition(global.levelprogression[selectedOption])
}