//Create a new instance of oScoreTracker to keep track of that level's score
if room != (rInit || rTitle || rLevelSelect)
{
	instance_create_depth(x,y,depth,oScoreTracker)
}

//If we've not been to this room before, push to the visited array to remove the [new] text
if !array_contains(global.roomsVisited,RoomToName(room)) array_push(global.roomsVisited,RoomToName(room))
show_debug_message(global.roomsVisited)