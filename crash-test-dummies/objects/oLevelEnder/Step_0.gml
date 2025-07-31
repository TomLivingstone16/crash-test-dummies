timer--;

//If the timer is 0, transition to the next room
if timer <= 0 && room != rLevel5
{
	RoomTransition(rLevelSelect)
}
else if timer <= 0 && room == rLevel5 //Unless we're in level 5, in which case spawn the door
{
	oToolTip.gameCompleted = true
	instance_create_depth(1144,97,oPlayer.depth+1,oExitDoor)
}