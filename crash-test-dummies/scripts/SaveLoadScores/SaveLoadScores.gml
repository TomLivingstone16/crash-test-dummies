function SaveScore(){
	
	var _val = json_stringify(global.highscores)
	
	SaveStringToFile("highscores.save",_val)
}
function LoadScore(){
	if file_exists("highscores.save")
	{
		global.highscores = LoadJSONFromFile("highscores.save")
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