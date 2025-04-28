function RoomTransition(_room)
{
	if !instance_exists(oRoomTransition) 
	{
		var _inst = instance_create_depth(x,y,depth,oRoomTransition)
		_inst.targetRoom = _room
	
	}
	
}