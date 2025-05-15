//Create a new instance of oScoreTracker to keep track of that level's score
if room != (rInit || rTitle || rLevelSelect)
{
	instance_create_depth(x,y,depth,oScoreTracker)
}

if !array_contains(global.roomsVisited,RoomToName(room)) array_push(global.roomsVisited,RoomToName(room))
show_debug_message(global.roomsVisited)