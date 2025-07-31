function IdleState()
{
	//When Idle, we are in rest and don't do anything. 
	image_speed = 0
}
function MoveState()
{
	image_speed = 1
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
	//Increment Room Score
	oScoreTracker.roomScore += scoreVal
	
	//Explosion
	instance_create_depth(x,y,depth,oExplosion)
	
	//Destroy the obstacle
	instance_destroy()
}
function ShootState()
{
	//Rotate the image
	image_angle = dir
	
	//If the cooldown reaches 0
	if timer = 0
	{
		//Create a new bullet
		var _inst = instance_create_depth(x,y,depth,oBulletObstacle)
		with (_inst)
		{
			creator = other.id
			spd = other.bulletSpd
		}
		//Reset the timer and decrease the max shots
		timer = timerLength
		maxShots--;
	}
	else timer--;
	
	//If we're out of shots, destroy the spawner
	if maxShots <= 0
	{
		state = states.destroy
	}
}