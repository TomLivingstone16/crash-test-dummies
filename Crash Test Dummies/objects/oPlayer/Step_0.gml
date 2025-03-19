//Get inputs
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left)
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right)
keyJump = keyboard_check(vk_space)

//Calculate x movement
xspd = (keyRight-keyLeft) * movespd

//Calculate Jump
if jumpStarted == false
{
	if keyJump
	{
		yspd = -2
		jumpStarted = true
	}
}
else
{
	yspd += 0.05
}

//Wall collision
if place_meeting(x+xspd,y+yspd,oWall)
{
	xspd = 0
	yspd = 0;
}


//Move
x += xspd
y += yspd


//Obstacle collision
if place_meeting(x+xspd, y, oObstacle)
{
	show_debug_message("Player died") //Replace with proper death code later
	instance_destroy();
}