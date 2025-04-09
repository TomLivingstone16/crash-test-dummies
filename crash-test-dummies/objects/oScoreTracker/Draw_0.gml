//Setup 
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_colour(c_white)
draw_set_font(fText)

//Draw Score in top left corner
draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+10,string(roomScore))
show_debug_message(is_array(global.highscores))
if is_array(global.highscores) //if we have values in the highscore arrays
{
	draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+20,string("HIGHSCORE: {0} ({1})",global.highscores[0][0],global.highscores[0][1]))
}