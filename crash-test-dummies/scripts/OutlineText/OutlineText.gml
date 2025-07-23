function OutlineText(_xPos,_yPos,_string,_colour=c_white)
{
	draw_set_colour(c_black)
	draw_text(_xPos+1,_yPos,_string)
	draw_text(_xPos-1,_yPos,_string)
	draw_text(_xPos,_yPos+1,_string)
	draw_text(_xPos,_yPos-1,_string)
	
	draw_set_colour(_colour)
	draw_text(_xPos,_yPos,_string)
	
	draw_set_colour(c_white)
}