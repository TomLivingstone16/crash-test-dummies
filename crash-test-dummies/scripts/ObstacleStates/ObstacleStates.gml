function IdleState()
{
	//When Idle, we are in rest and don't do anything. 
}
function MoveState()
{
	//Update direction and image angle
	direction = dir
	image_angle = dir

	//Move towards sprite
	xspd = lengthdir_x(spd,dir)
	yspd = lengthdir_y(spd,dir)
	x += xspd
	y += yspd
}
function DestroyState()
{
	oScoreTracker.roomScore += scoreVal
	//Destroy the obstacle
	instance_destroy()
}
function ShootState()
{
	if timer = 0
	{
		var _inst = instance_create_depth(x,y,depth,oBulletObstacle)
		with (_inst)
		{
			spd = other.bulletSpd
		}
		timer = timerLength
		maxShots--;
	}
	else timer--;

	if maxShots <= 0
	{
		state = states.destroy
	}
}