//Create a new instance of oScoreTracker to keep track of that level's score
if room != (rInit || rTitle || rLevelSelect)
{
	instance_create_depth(x,y,depth,oScoreTracker)
}