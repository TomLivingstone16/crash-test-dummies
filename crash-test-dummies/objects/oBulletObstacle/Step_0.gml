//If we touch a wall or lasers, run the destroy state
if place_meeting(x,y,oWall) || place_meeting(x,y,oLaserField)
{
	state = states.destroy
}

//Run the current state
if !global.gamePaused state();


//If in contact with a spawner that's not our creator, destroy it
if place_meeting(x,y,oObstacleSpawner)
{
	var _inst = instance_place(x,y,oObstacleSpawner)
	
	if _inst != creator
	{
		_inst.state = _inst.states.destroy
	}
	
}