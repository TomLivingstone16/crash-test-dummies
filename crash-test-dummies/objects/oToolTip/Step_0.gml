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
	default:
		toolTipString = "This will never happen\nbut it would be funny\nif it did."
		
}