if (global.gamePaused)
{
	if (keyboard_check_pressed(global.downKey) or keyboard_check_pressed(global.upKey)) && changingKey == false
	{
		selectedOption += (keyboard_check_pressed(global.downKey) - keyboard_check_pressed(global.upKey))
		audio_play_sound(sndMenuNavigation,8,false)
	}
	if selectedOption < 0
	{
		selectedOption = array_length(options[menuLevel]) -1
	}
	else if selectedOption > array_length(options[menuLevel]) -1
	{
		selectedOption = 0
	}
	
	//Check for interactions
	if (keyboard_check_pressed(global.interactKey) && changingKey == false)
	{
		audio_play_sound(sndMenuNavigation,8,false)
		if menuLevel == 0 //If on base menu
		{
			if selectedOption == 0 //If selected resume
			{
				global.gamePaused = false
			}
			if selectedOption = 1 //If selected Reload Level
			{
				RoomTransition(room)
				oRoomTransition.reloading = true
				global.gamePaused = false
			}
			if selectedOption == 2 //If selected settings
			{
				menuLevel = 1;
			}
			if selectedOption == 3 //If selected quit to title
			{
				RoomTransition(rTitle)
				global.gamePaused = false
			}
			if selectedOption == 4 //if selected quit to desktop
			{
				game_end()
			}
		}
		if menuLevel == 1 //If on settings menu
		{
			if selectedOption == 0
			{
				menuLevel = 2
			}
			if selectedOption == 1 //If selected back
			{
				menuLevel = 0;
			}
		}
		if menuLevel == 2 //If on Controls menu
		{
			if selectedOption == (0 || 1 || 2 || 3 || 4 || 5 || 6) //If selected any of the controls
			{
				changingKey = true
			}
			if selectedOption == 7 //If selected back
			{
				menuLevel = 1
			}
		}
	}
	
if changingKey = true
{
	switch(selectedOption)
	{
		case 0:
			options[menuLevel][selectedOption] = "Left: [PRESS KEY]"
			break;
		case 1:
			options[menuLevel][selectedOption] = "Right: [PRESS KEY]"
			break;
		case 2:
			options[menuLevel][selectedOption] = "Up: [PRESS KEY]"
			break;
		case 3:
			options[menuLevel][selectedOption] = "Down: [PRESS KEY]"
			break;
		case 4:
			options[menuLevel][selectedOption] = "Interact: [PRESS KEY]"
			break;
		case 5:
			options[menuLevel][selectedOption] = "Jump: [PRESS KEY]"
			break;
		case 6:
			options[menuLevel][selectedOption] = "Pause: [PRESS KEY]"
			break;
	}
	show_debug_message(KeyToString(keyboard_key))
	
	if keyboard_key != vk_nokey && keyboard_key != global.interactKey
	{
		changeKey = keyboard_key
		switch(selectedOption)
		{
			case 0:
				global.leftKey = changeKey
				options[menuLevel][selectedOption] = "Left: " + string(KeyToString(global.leftKey))
				break;
			case 1:
				global.rightKey = changeKey
				options[menuLevel][selectedOption] = "Right: " + string(KeyToString(global.rightKey))
				break;
			case 2:
				global.upKey = changeKey
				options[menuLevel][selectedOption] = "Up: " + string(KeyToString(global.upKey))
				break;
			case 3:
				global.downKey = changeKey
				options[menuLevel][selectedOption] = "Down: " + string(KeyToString(global.downKey))
				break;
			case 4:
				global.interactKey = changeKey
				options[menuLevel][selectedOption] = "Interact: " + string(KeyToString(global.interactKey))
				break;
			case 5:
				global.jumpKey = changeKey
				options[menuLevel][selectedOption] = "Jump: " + string(KeyToString(global.jumpKey))
				break;
			case 6:
				global.pauseKey = changeKey
				options[menuLevel][selectedOption] = "Pause: " + string(KeyToString(global.pauseKey))
				break;
			default:
				show_debug_message("N/A")
				break;
		}
	changingKey = false
	}
	
}
	
}

if keyboard_check_pressed(global.pauseKey) && changingKey == false && room != rTitle
{
	global.gamePaused = !global.gamePaused
}

show_debug_message(selectedOption)
show_debug_message(changingKey)