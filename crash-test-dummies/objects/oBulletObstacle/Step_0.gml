//If we touch a wall or lasers, run the destroy state
if place_meeting(x,y,oWall) || place_meeting(x,y,oLaserField)
{
	state = states.destroy
}

//Run the current state
if !global.gamePaused state();