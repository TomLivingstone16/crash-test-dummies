function RoomTransition(_room,_colour=c_black)
{
	if !instance_exists(oRoomTransition) 
	{
		var _inst = instance_create_depth(x,y,depth,oRoomTransition)
		_inst.targetRoom = _room
		_inst.reloading = true
		_inst.spriteColour = _colour
	
	}
}