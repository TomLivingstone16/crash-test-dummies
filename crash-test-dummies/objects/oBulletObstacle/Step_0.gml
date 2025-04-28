//If we touch a wall, run the destroy state
if place_meeting(x,y,oWall)
{
	state = states.destroy
}

//Run the current state
if !global.gamePaused state();