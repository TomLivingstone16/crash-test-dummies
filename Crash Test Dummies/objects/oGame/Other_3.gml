var _score = 0

//Get names of every key in the struct
var _names = struct_get_names(global.score)

//Loop through struct names array
for (var i = 0; i < array_length(_names); i++)
{
	show_debug_message(_names[i])
	//Add level score to total score
	_score += global.score[$ _names[i]]
	show_debug_message(_score)
}


if !is_array(global.highscores) //If this is our first time saving a score
{
	global.highscores = array_create(0)
}

for (var s = 0; s < array_length(global.highscores)+1; s++)
{
	if s = array_length(global.highscores)
	{
		array_push(global.highscores,[_score,"BOB"])
		break;
	}
	
	if _score > global.highscores[s][0]
	{
		array_insert(global.highscores,s,[_score,"BOB"])
		break
	}
}

SaveScore()