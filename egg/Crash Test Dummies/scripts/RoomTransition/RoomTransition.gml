function RoomTransition()
{
	for (var i = 0; i < array_length(global.levelprogression); i++;)
	{
		if global.levelprogression[i] == room
		{
			if i+1 == array_length(global.levelprogression)
			{
				game_end()
			}
			else room_goto(global.levelprogression[i+1]) // Add fade code later
			
		}
	}
	
}