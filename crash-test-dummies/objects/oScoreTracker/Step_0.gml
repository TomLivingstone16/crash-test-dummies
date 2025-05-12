if room != (rLevelSelect || rTitle)
{
	var _obstCount = instance_number(pObstacle)
	var _spawnCount = instance_number(oObstacleSpawner)
	var _obstacles = array_create(0)

	//Iterate through obstacles to filter out moving/undefeatable obstacles
	var _count = 0
	for (var i = 0; i < _obstCount; i++;)
	{
		var _inst = instance_find(pObstacle,i) 
		{
			if _inst.object_index = oMovingObstacle or _inst.object_index = oBulletObstacle //If instance is a moving obstacle or a bullet, filter them out
			{
				//show_debug_message("nope")
			}
			else
			{
				_count += 1
				array_push(_obstacles,_inst)
			}
		}
	}

	//Iterate through spawners to add to array
	for (var i = 0; i < _spawnCount; i++;)
	{
		var _inst = instance_find(oObstacleSpawner,i) 
		_count += 1
		array_push(_obstacles,_inst)
	}

	if _count <= 0 && !instance_exists(oRoomTransition) //temporary, replace with proper code later
	{
		show_message("defeated all!")
		show_debug_message("Final Score: {0}", roomScore)
	
		//Transition to next room
		RoomTransition(rTesting2)
	}
}
