//Update xTo and yTo to follow player
xTo = oPlayer.x
yTo = oPlayer.y - 16 //-16 to account for origin on bottom
	
//Update Direction
dir = point_direction(x,y,xTo,yTo)

//Calculate distance to player
var _dist = point_distance(x,y,xTo,yTo)

//If distance is less that 100 pixels, instigate follow state
if _dist < 100
{
	state = states.shoot
}


//Activate State
state();