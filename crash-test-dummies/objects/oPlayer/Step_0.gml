//If applicable, run the current state
if !(global.gamePaused or (instance_exists(oConfetti) && oToolTip.gameCompleted == false))
{
	image_speed = 1
	state();
}
else
{
	image_speed = 0
}

depth = -999999