if !(global.gamePaused or instance_exists(oConfetti))
{
	state();
}
else
{
	sprite_index = sprIdle
	image_speed = 0
}

depth = -999999