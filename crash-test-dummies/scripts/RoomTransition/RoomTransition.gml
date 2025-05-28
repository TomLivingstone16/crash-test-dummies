function RoomTransition(_room,_colour=c_black,_doScoreUpdate = true)
{
	if !(_doScoreUpdate) //If we've quit from the menu instead of finishing level
	{
		//Set score to 0 if we're not saving the score for this room
		oScoreTracker.roomScore = 0
	}
	if !instance_exists(oRoomTransition) 
	{
		var _inst = instance_create_depth(x,y,depth,oRoomTransition)
		_inst.targetRoom = _room
		_inst.reloading = true
		_inst.spriteColour = _colour
	
	}
	
}