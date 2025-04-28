if (global.gamePaused)
{
	if keyboard_check_pressed(global.downKey) or keyboard_check_pressed(global.upKey) 
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
	if (keyboard_check_pressed(global.interactKey))
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
				//Nothing yet since i haven't added a title screen
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
			if selectedOption == 1 //If selected right
			{
				options[menuLevel][selectedOption] = "Right: [PRESS KEY]"
				ChangeKeybind(global.rightKey)
				options[menuLevel][selectedOption] = "Right: " + KeyToString(global.rightKey)
			}
			if selectedOption == 7 //If selected back
			{
				menuLevel = 1
			}
		}
	}
	
}

if keyboard_check_pressed(global.pauseKey)
{
	global.gamePaused = !global.gamePaused
}