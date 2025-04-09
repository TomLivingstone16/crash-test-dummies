//Set Timer parameters
timer = 0


//Player Detection
xTo = 0;
yTo = 0;
dir = 0;

//Obstacle state struct
states = {
	idle : IdleState,
	shoot : ShootState,
	destroy : DestroyState,
}

state = states.idle

//Score on defeat
scoreVal = 1500