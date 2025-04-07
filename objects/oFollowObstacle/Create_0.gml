//Locate player variables
xTo = 0;
yTo = 0;

dir = 0;
spd = 1;

xspd = 0;
yspd = 0;

//Obstacle state struct
states = {
	idle : IdleState,
	move : MoveState,
	destroy : DestroyState,
}

//By default, we set to idle state until player comes close enough
state = states.idle


//Score on defeat
scoreVal = 1000