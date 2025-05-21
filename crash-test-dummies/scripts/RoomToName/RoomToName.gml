function RoomToName(_room)
{
	var _name = ""
	switch(_room)
	{
		case rTesting: 
			_name = "TESTING ROOM"
			break;
		case rTesting2:
			_name = "TESTING ROOM 2"
			break;
		case rLevel1:
			_name = "The Beginning"
			break;
		default:
			_name =  "invalid room"
			break;
	}
	return _name
}