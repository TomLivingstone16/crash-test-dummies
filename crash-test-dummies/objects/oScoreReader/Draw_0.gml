//Setup 
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_colour(c_white)
draw_set_font(fText)


//Draw the leaderboard
if settingName == false
{
	//Title
	OutlineText(96,46,"LEADERBOARD")
	//Draw Top 10 Scores
	for (var i = 0; i < 10; i++)
	{
		//If i is greater than or equal to the array length we have, break the loop
		if i >= array_length(global.highscores)
		{
			break;
		}
	
		//Highest score is highlighted in yellow
		if i = 0 var _col = c_yellow else _col = c_white
	
		//Draw other scores below it
		OutlineText(96,64+18*i,global.highscores[i][0],_col)
		OutlineText(150,64+18*i,"|    " + global.highscores[i][1],_col)
	}
}
else
{
	draw_set_colour(c_black)
	draw_set_alpha(0.7)
	draw_rectangle(0,0,640,360,false)
	draw_set_colour(c_white)
	draw_set_alpha(1)
	OutlineText(96,162,"Please enter your name (3 char limit)")
	OutlineText(96,180,storedName)
}

draw_set_halign(fa_right)

OutlineText(600,300,string("Press [{0}] to save score",KeyToString(global.interactKey)))
OutlineText(600,320,string("Press [{0}] to go back",KeyToString(global.backKey)))