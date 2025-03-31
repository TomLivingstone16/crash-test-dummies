//Setup 
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_colour(c_white)
draw_set_font(fText)

//Draw Score in top left corner
draw_text(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+10,string(roomScore))