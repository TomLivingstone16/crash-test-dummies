timer--;

if timer <= 0 && room != rLevel5
{
	RoomTransition(rLevelSelect)
}
else if timer <= 0 && room == rLevel5
{
	oToolTip.gameCompleted = true
	instance_create_depth(1144,97,oPlayer.depth+1,oExitDoor)
}