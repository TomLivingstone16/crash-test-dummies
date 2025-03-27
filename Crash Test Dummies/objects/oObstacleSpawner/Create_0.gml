//Set Timer parameters
timerLength = 15;
timer = 0

//Max Shots
maxShots = 10

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