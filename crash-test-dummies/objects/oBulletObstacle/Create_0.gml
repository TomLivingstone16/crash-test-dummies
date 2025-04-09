//Set target post to oPlayer
xTo = oPlayer.x
yTo = oPlayer.y - 16 //-16 to account for origin on bottom

//Set Direction
dir = point_direction(x,y,xTo,yTo)
spd = 0;

xspd = 0;
yspd = 0;

//Obstacle state struct
states = {
	move : MoveState,
	destroy : DestroyState,
}



//By default, we set to idle state until player comes close enough
state = states.move

//Score on defeat
scoreVal = 0 //Bullets are worth nothing since score is incremented from the spawner's destruction