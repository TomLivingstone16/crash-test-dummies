//Switch 
switch(room)
{
	case rTesting:
		if roomScore > global.score.testLevel
			global.score.testLevel = roomScore
		break;
	case rTesting2:
		if roomScore > global.score.testLevel2
			global.score.testLevel2 = roomScore
		break;
	case rLevel1:
		if roomScore > global.score.level1
			global.score.level1 = roomScore
		break;
	case rLevel2:
		if roomScore > global.score.level2
			global.score.level2 = roomScore
		break;
	case rLevel3:
		if roomScore > global.score.level3
			global.score.level3 = roomScore
	case rLevel4:
		if roomScore > global.score.level4
			global.score.level4 = roomScore
	case rLevel5:
		if roomScore > global.score.level5
			global.score.level5 = roomScore
}
