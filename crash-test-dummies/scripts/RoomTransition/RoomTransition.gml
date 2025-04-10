function RoomTransition(_room)
{
	instance_create_depth(x,y,depth,oRoomTransition)
	oRoomTransition.targetRoom = _room
	
}