//If player exits through it, transition to the end screen
if place_meeting(x,y,oPlayer) && keyboard_check_pressed(global.interactKey)
{
	RoomTransition(rEndingRoom)
}