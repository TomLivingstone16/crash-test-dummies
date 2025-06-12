//Setup 
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_colour(c_white)
draw_set_font(fText)

if settingName == false
{
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

	draw_text(96,82+18*(global.levelsUnlocked),"|--------------|")

	if selectedOption == global.levelsUnlocked + 1
	{
		draw_set_colour(c_yellow)
		draw_text(96,100+18*(global.levelsUnlocked),"SAVE HIGH SCORE <")
		draw_set_colour(c_white)
	}
	else draw_text(96,100+18*(global.levelsUnlocked),"SAVE HIGH SCORE")
}
else
{
	draw_set_colour(c_black)
	draw_set_alpha(0.7)
	draw_rectangle(0,0,640,360,false)
	draw_set_colour(c_white)
	draw_set_alpha(1)
	draw_text(96,162,"Please enter your name (3 char limit)")
	draw_text(96,180,storedName)
}