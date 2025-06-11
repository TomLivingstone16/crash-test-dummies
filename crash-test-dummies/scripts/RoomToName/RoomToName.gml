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
			_name = "Introductions"
			break;
		case rLevel2: 
			_name = "Turrets"
			break;
		case rLevel3:
			_name = "Lasers"
			break;
		case rLevel4:
			_name = "Leap of Faith"
			break;
		case rLevel5:
			_name = "Finale"
			break;
		default:
			_name =  "invalid room"
			break;
	}
	return _name
}