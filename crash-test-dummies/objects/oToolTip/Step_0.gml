switch (room)
{
	case rLevel1: 
		toolTipString = string("Use {0} and {1} to move!\nUse {2} to Jump\n \nTry to lead the saws\ninto a nearby wall!",KeyToString(global.leftKey),KeyToString(global.rightKey),KeyToString(global.jumpKey))
		break;
	case rLevel2:
		toolTipString = "These are turrets.\nThey'll shoot if you get close.\nDestroy them all."
		break;
	case rLevel3:
		toolTipString = "These are lasers!\nYou can't destroy them,\nbut they can destroy you!"
		break;
	case rLevel4:
		toolTipString = "Jump."
		break;
	case rLevel5:
		if gameCompleted == false toolTipString = "You're in the home\nstretch now." else toolTipString = "Something has opened."
		break;
	default:
		toolTipString = "This will never happen\nbut it would be funny\nif it did."
		
}