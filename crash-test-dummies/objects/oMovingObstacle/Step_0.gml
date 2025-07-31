if (!global.gamePaused)
{
	if justVisited = 0 //if last point was the begin point
	{
		xTo = xEnd
		yTo = yEnd
	}
	else if justVisited = 1 //if last point was end point
	{
		xTo = xBegin
		yTo = yBegin
	}

	
	//Update Direction
	dir = point_direction(x,y,xTo,yTo)

	//Move towards point
	xspd = lengthdir_x(spd,dir)
	yspd = lengthdir_y(spd,dir)

	if round(x) == xTo && round(y) == yTo
	{
		xspd = 0
		yspd = 0
		x = round(x)
		y = round(y)
	
		if justVisited == 0 justVisited = 1 else justVisited = 0
	}
	
	//If confetti exists, pause movement so we don't kill the player accidentally
	if instance_exists(oConfetti)
	{
		xspd = 0
		yspd = 0
	}
	
	x += xspd
	y += yspd
}