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
			//If instance does not contribute to score, filter out
			if !(_inst.object_index = oMovingObstacle 
			or _inst.object_index = oBulletObstacle 
			or _inst.object_index = pObstacle)
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

	if _count <= 0 && !instance_exists(oRoomTransition)
	{
		//Update unlocked levels
		if global.levelsUnlocked+1 < global.maxLevels global.levelsUnlocked += 1;
		
		
		//Run confetti and stuff first
		if !instance_exists(oLevelEnder) instance_create_depth(x,y,depth,oLevelEnder)
		
	}
}
