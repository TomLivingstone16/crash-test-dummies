//Get inputs
keyLeft = keyboard_check(global.leftKey)
keyLeft = clamp(keyLeft,0,1)
keyRight = keyboard_check(global.rightKey)
keyRight = clamp(keyRight,0,1)
keyJumpPressed = keyboard_check_pressed(global.jumpKey)
keyJumpPressed = clamp(keyJumpPressed,0,1);

keyJump = keyboard_check(vk_space)
keyJump = clamp(keyJump,0,1)

//Jump Key Buffering
if keyJumpPressed
{
	jumpKeyBufferTimer = bufferTime;
}
if jumpKeyBufferTimer > 0
{
	jumpKeyBuffered = true;
	jumpKeyBufferTimer--;
} else jumpKeyBuffered = false;


//Calculate x movement
moveDir = (keyRight-keyLeft)

//Set Xspd
xspd = moveDir * moveSpd;

//X Collision
var _subPixel = .5;
if place_meeting(x+xspd,y,oWall)
{
	//Scoot up to wall precisely
	var _pixelCheck = _subPixel * sign(xspd)
	while !place_meeting(x+_pixelCheck,y,oWall)
	{
		x += _pixelCheck;
	}
	
	xspd = 0
}


//Y 
//Gravity
yspd += grav;
if yspd > termVel {yspd = termVel};

//Jump
if jumpKeyBuffered && place_meeting(x,y+1,oWall)
{
	yspd = jspd;
}

//Y Collision
var _subPixel = .5;
if place_meeting(x,y+yspd,oWall)
{
	//Scoot up to wall precisely
	var _pixelCheck = _subPixel * sign(yspd)
	while !place_meeting(x,y+_pixelCheck,oWall)
	{
		y += _pixelCheck;
	}
	
	yspd = 0
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