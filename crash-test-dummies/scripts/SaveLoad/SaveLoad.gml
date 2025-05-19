function SaveGame(){
	
	var _score = global.highscores
	
	var _settings = [global.leftKey,global.rightKey,global.upKey,global.downKey,global.interactKey,global.jumpKey,global.pauseKey]
	
	var _levelsUnlocked = global.levelsUnlocked
	var _roomsVisited = global.roomsVisited
	
	var _val = json_stringify([_score,_settings,_levelsUnlocked,_roomsVisited])
	
	SaveStringToFile("game.save",_val)
}
function LoadGame(){
	if file_exists("game.save")
	{
		var _vals = LoadJSONFromFile("game.save")
		
		global.highscores = _vals[0]
		
		var _settings = _vals[1]
		
		global.leftKey = _settings[0]
		global.rightKey = _settings[1]
		global.upKey = _settings[2]
		global.downKey = _settings[3]
		global.interactKey = _settings[4]
		global.jumpKey = _settings[5]
		global.pauseKey = _settings[6]
		
		
		global.levelsUnlocked = _vals[2]
		global.roomsVisited = _vals[3]
	}
}


function SaveStringToFile(_filename,_string)
{

	var _buffer = buffer_create( string_byte_length(_string)+1,buffer_fixed, 1 );

	buffer_write(_buffer, buffer_string, _string)

	buffer_save(_buffer,_filename)

	buffer_delete(_buffer)
}

function LoadJSONFromFile(_filename)
{

	var _buffer = buffer_load(_filename)

	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer)
	
	var _json = json_parse(_string)
	return _json

}