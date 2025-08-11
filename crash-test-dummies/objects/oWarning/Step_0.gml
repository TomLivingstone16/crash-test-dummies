//if the timer is zero, transition to the title screen.
if timer - 1 <= 0
{
	RoomTransition(rTitle)
}
else
{
	timer--;
}