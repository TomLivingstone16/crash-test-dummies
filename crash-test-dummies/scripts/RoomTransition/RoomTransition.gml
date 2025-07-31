function RoomTransition(_room,_colour=c_black,_doScoreUpdate = true)
{
	if !(_doScoreUpdate) //If we've quit from the menu instead of finishing level
	{
		//Set score to 0 if we're not saving the score for this room
		if instance_exists(oScoreTracker) oScoreTracker.roomScore = 0
	}
	if !instance_exists(oRoomTransition) //If the transition object doesn't already exist, create it and set variables
	{
		var _inst = instance_create_depth(x,y,depth,oRoomTransition)
		_inst.targetRoom = _room
		_inst.reloading = true
		_inst.spriteColour = _colour
	
	}


}