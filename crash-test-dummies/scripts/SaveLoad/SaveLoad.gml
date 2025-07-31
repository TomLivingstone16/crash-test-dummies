function SaveGame(_name="NUL"){
	var _score = 0

	//Get names of every key in the struct
	var _names = struct_get_names(global.score)

	//Loop through struct names array
	for (var i = 0; i < array_length(_names); i++)
	{
		//show_debug_message(_names[i])
		//Add level score to total score
		_score += global.score[$ _names[i]]
		//show_debug_message(_score)
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
			array_push(global.highscores,[_score,_name]) //add to end of array
			break;
		}
	
		//if the score is higher than s we insert the score there. since array is sorted in descending order, this will be the highest score we find
		if _score > global.highscores[s][0]
		{
			array_insert(global.highscores,s,[_score,_name])
			break
		}
	}
	SaveVariables();
	
	
}
function SaveVariables()
{
	//Store data in local variables
	var _highscore = global.highscores
	var _settings = [global.leftKey,global.rightKey,global.upKey,global.downKey,global.interactKey,global.jumpKey,global.pauseKey]
	var _levelsUnlocked = global.levelsUnlocked
	var _roomsVisited = global.roomsVisited
	var _levelsCompleted = global.levelsCompleted
	
	//Put data in an array and convert to a string so it can be stored
	var _val = json_stringify([_highscore,_settings,_levelsUnlocked,_roomsVisited,_levelsCompleted])
	
	//Save the string
	SaveStringToFile("game.save",_val)
}
function LoadGame(){
	if file_exists("game.save") //Only run this if the file exists. 
	{
		//Get the array from the file
		var _vals = LoadJSONFromFile("game.save")
		
		//Set scores to be from the file
		global.highscores = _vals[0]
		
		//Get settings array from the file
		var _settings = _vals[1]
		
		//Set controls from settings
		global.leftKey = _settings[0]
		global.rightKey = _settings[1]
		global.upKey = _settings[2]
		global.downKey = _settings[3]
		global.interactKey = _settings[4]
		global.jumpKey = _settings[5]
		global.pauseKey = _settings[6]
		
		//Set unlocked levels and remove [new] label from ones we've played
		global.levelsUnlocked = _vals[2]
		global.roomsVisited = _vals[3]
		global.levelsCompleted = _vals[4]
	}
}


function SaveStringToFile(_filename,_string)
{
	//Create a buffer with the data we've got and save it to the file
	var _buffer = buffer_create( string_byte_length(_string)+1,buffer_fixed, 1 );
	buffer_write(_buffer, buffer_string, _string)
	buffer_save(_buffer,_filename)
	buffer_delete(_buffer)
}

function LoadJSONFromFile(_filename)
{
	//Find the buffer in the file we made and remove it, then turn it back into a string
	var _buffer = buffer_load(_filename)
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer)
	var _json = json_parse(_string)
	return _json
}