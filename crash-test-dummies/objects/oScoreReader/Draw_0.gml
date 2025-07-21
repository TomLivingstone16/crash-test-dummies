//Setup 
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_colour(c_white)
draw_set_font(fText)


//Draw the leaderboard
if settingName == false
{
	//Title
	draw_text(96,46,"LEADERBOARD")
	//Draw Top 10 Scores
	for (var i = 0; i < 10; i++)
	{
		//If i is greater than or equal to the array length we have, break the loop
		if i >= array_length(global.highscores)
		{
			break;
		}
	
		//Highest score is highlighted in yellow
		if i = 0 draw_set_colour(c_yellow) else draw_set_colour(c_white)
	
		//Draw other scores below it
		draw_text(96,64+18*i,global.highscores[i][0])
		draw_text(150,64+18*i,"|    " + global.highscores[i][1])
	}
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


