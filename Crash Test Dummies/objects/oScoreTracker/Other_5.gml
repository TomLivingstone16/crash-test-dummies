//Switch 
switch(room)
{
	case rTesting:
		global.score.testLevel = roomScore
		break;
}

show_debug_message("Score {0}", roomScore)