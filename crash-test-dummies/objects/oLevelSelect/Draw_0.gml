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
		if i = selectedOption var _col = c_yellow else _col = c_white
		OutlineText(60,64+18*i,"[NEW]",_col)
	}
	if i = selectedOption
	{
		OutlineText(96,64+18*i, RoomToName(global.levelprogression[i]) + " <",c_yellow)
	}
	else OutlineText(96,64+18*i,RoomToName(global.levelprogression[i]))
}

OutlineText(96,82+18*(global.levelsUnlocked),"|--------------|")
if selectedOption == global.levelsUnlocked + 1
{
	OutlineText(96,100+18*(global.levelsUnlocked),"SHOW LEADERBOARD <",c_yellow)
}
else OutlineText(96,100+18*(global.levelsUnlocked),"SHOW LEADERBOARD")

