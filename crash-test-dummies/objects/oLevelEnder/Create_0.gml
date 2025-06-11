//Update unlocked levels
if global.levelsUnlocked+1 < global.maxLevels global.levelsUnlocked += 1;

//Spawn confetti objects
var _inst;
repeat(irandom_range(100,250))
{
	_inst = instance_create_depth(irandom_range(camera_get_view_x(view_camera[0]),camera_get_view_x(view_camera[0])+640),irandom_range(camera_get_view_y(view_camera[0])-360,camera_get_view_y(view_camera[0])+360),depth,oConfetti)
	
	//Set to a random frame and colour
	_inst.image_index = irandom_range(0,3)
	_inst.image_blend = make_colour_rgb(irandom(255),irandom(255),irandom(255))
}


timer = 180 //3 seconds

//Play level complete sound
audio_play_sound(sndLevelComplete,8,false)