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
			if selectedOption == 1 //If selected settings
			{
				selectedOption = 0
				menuLevel = 1;
			}
			if selectedOption = 2 //If selected Reload Level
			{
				RoomTransition(room)
				oRoomTransition.reloading = true
				global.gamePaused = false
			}
			if selectedOption == 3 //If selected quit to title
			{
				RoomTransition(rTitle,c_black,false)
				global.gamePaused = false
			}
			if selectedOption == 4 //if selected quit to desktop
			{
				if instance_exists(oScoreTracker) oScoreTracker.roomScore = 0 
				game_end()
			}
		}
		if menuLevel == 1 //If on settings menu
		{
			if selectedOption == 1
			{
				menuLevel = 2
				selectedOption = 0
			}
			if selectedOption == 2 //If selected back
			{
				menuLevel = 0;
				selectedOption = 0
			}
		}
		if menuLevel == 2 //If on Controls menu
		{
			if selectedOption == 1
			{
				changingKey = true
			}
			if selectedOption == 2 
			{
				changingKey = true
			}
			if selectedOption == 3
			{
				changingKey = true
			}
			if selectedOption == 4 
			{
				changingKey = true
			}
			if selectedOption == 5 
			{
				changingKey = true
			}
			if selectedOption == 6
			{
				changingKey = true
			}
			if selectedOption == 7 
			{
				changingKey = true
			}
			if selectedOption == 8 //If selected back
			{
				menuLevel = 1
				selectedOption = 0
			}
		}
	}
	
	if keyboard_check_pressed(global.backKey) && changingKey == false
	switch(menuLevel)
	{
		case 0:
			global.gamePaused = false
			break;
		case 1:
			menuLevel = 0
			break;
		case 2:
			menuLevel = 1
			break;
	}
if changingKey = true
{
	switch(selectedOption)
	{
		case 1:
			options[menuLevel][selectedOption] = "Left: [PRESS KEY]"
			break;
		case 2:
			options[menuLevel][selectedOption] = "Right: [PRESS KEY]"
			break;
		case 3:
			options[menuLevel][selectedOption] = "Up: [PRESS KEY]"
			break;
		case 4:
			options[menuLevel][selectedOption] = "Down: [PRESS KEY]"
			break;
		case 5:
			options[menuLevel][selectedOption] = "Interact: [PRESS KEY]"
			break;
		case 6:
			options[menuLevel][selectedOption] = "Jump: [PRESS KEY]"
			break;
		case 7:
			options[menuLevel][selectedOption] = "Pause: [PRESS KEY]"
			break;
	}
	
	if keyboard_key != vk_nokey && keyboard_key != global.interactKey
	{
		changeKey = keyboard_key
		switch(selectedOption)
		{
			case 1:
				global.leftKey = changeKey
				options[menuLevel][selectedOption] = "Left: " + string(KeyToString(global.leftKey))
				break;
			case 2:
				global.rightKey = changeKey
				options[menuLevel][selectedOption] = "Right: " + string(KeyToString(global.rightKey))
				break;
			case 3:
				global.upKey = changeKey
				options[menuLevel][selectedOption] = "Up: " + string(KeyToString(global.upKey))
				break;
			case 4:
				global.downKey = changeKey
				options[menuLevel][selectedOption] = "Down: " + string(KeyToString(global.downKey))
				break;
			case 5:
				global.interactKey = changeKey
				options[menuLevel][selectedOption] = "Interact: " + string(KeyToString(global.interactKey))
				break;
			case 6:
				global.jumpKey = changeKey
				options[menuLevel][selectedOption] = "Jump: " + string(KeyToString(global.jumpKey))
				break;
			case 7:
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
	
} else SaveVariables()

if keyboard_check_pressed(global.pauseKey) && changingKey == false && room != rTitle && room != rLevelSelect && menuLevel == 0 && room != rEndingRoom && room != rScoreRoom
{
	global.gamePaused = !global.gamePaused
}

