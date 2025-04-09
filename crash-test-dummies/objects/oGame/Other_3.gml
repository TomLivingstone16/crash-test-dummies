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

//Loop through high scores array
for (var s = 0; s < array_length(global.highscores)+1; s++)
{
	if s = array_length(global.highscores) //If we have gotten through the whole array, we are the lowest score
	{
		array_push(global.highscores,[_score,"BOB"]) //add to end of array
		break;
	}
	
	//if the score is higher than s we insert the score there. since array is sorted in descending order, this will be the highest score we find
	if _score > global.highscores[s][0]
	{
		array_insert(global.highscores,s,[_score,"BOB"])
		break
	}
}

SaveScore()