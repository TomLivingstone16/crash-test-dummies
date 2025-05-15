//Setup 
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_colour(c_white)
draw_set_font(fText)

//Draw Options
for (var i = 0; i < global.levelsUnlocked+1; i++)
{
	if !array_contains(global.roomsVisited,RoomToName(global.levelprogression[i]))
	{
		if i = selectedOption draw_set_colour(c_yellow)
		draw_text(60,64+18*i,"[NEW]")
		draw_set_colour(c_white)
	}
	if i = selectedOption
	{
		draw_set_colour(c_yellow)
		draw_text(96,64+18*i, RoomToName(global.levelprogression[i]) + " <")
		draw_set_colour(c_white)
	}
	else draw_text(96,64+18*i,RoomToName(global.levelprogression[i]))
}
