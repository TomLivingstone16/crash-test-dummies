if global.gamePaused 
{
	draw_set_alpha(0.8)
	draw_set_colour(c_black)
	draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+640,camera_get_view_y(view_camera[0])+360,false)
	draw_set_colour(c_white)
	draw_set_alpha(1)
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)

	for (var i = 0; i < array_length(options[menuLevel]); i++)
	{
		if i = selectedOption
		{
			
			OutlineText((camera_get_view_x(view_camera[0])+320),(camera_get_view_y(view_camera[0])+130+18*i),"> " +options[menuLevel][i] + " <",c_yellow)
			
		}
		else OutlineText((camera_get_view_x(view_camera[0])+320),(camera_get_view_y(view_camera[0])+130+18*i),options[menuLevel][i])
		
	}
}

