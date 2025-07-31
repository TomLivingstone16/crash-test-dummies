//Get menu navigation inputs
if (keyboard_check_pressed(global.downKey) or keyboard_check_pressed(global.upKey))
{
	selectedOption += (keyboard_check_pressed(global.downKey) - keyboard_check_pressed(global.upKey))
	audio_play_sound(sndMenuNavigation,8,false)
}
//If outside the bounds of what we can do, loop around to other side
if selectedOption < 0
{
	selectedOption = global.levelsUnlocked + 1
}
else if selectedOption > global.levelsUnlocked + 1 
{
	selectedOption = 0
}

//If we interact with an option, transition to that room
if keyboard_check_pressed(global.interactKey) && selectedOption != global.levelsUnlocked + 1
{
	show_debug_message(RoomToName(global.levelprogression[selectedOption]))
	RoomTransition(global.levelprogression[selectedOption])
}
if keyboard_check_pressed(global.interactKey) && selectedOption == global.levelsUnlocked + 1
{
	RoomTransition(rScoreRoom)
}