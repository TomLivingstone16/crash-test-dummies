function OutlineText(_xPos,_yPos,_string,_colour=c_white)
{
	//Draw outline by repeating black text offset by a pixel in each direction
	draw_set_colour(c_black)
	draw_text(_xPos+1,_yPos,_string)
	draw_text(_xPos-1,_yPos,_string)
	draw_text(_xPos,_yPos+1,_string)
	draw_text(_xPos,_yPos-1,_string)
	
	//Set to our desired colour and draw the text in the right spot
	draw_set_colour(_colour)
	draw_text(_xPos,_yPos,_string)
	

	//Reset colour to white so we don't screw up any other drawings
	draw_set_colour(c_white)
}