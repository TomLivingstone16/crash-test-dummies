switch (room)
{
	case rLevel1: 
		toolTipString = string("Use {0} and {1} to move!\nUse {2} to Jump\n \nTry to lead the saws\ninto a nearby wall!",KeyToString(global.leftKey),KeyToString(global.rightKey),KeyToString(global.jumpKey))
		break;
	default:
		toolTipString = "This will never happen\nbut it would be funny\nif it did."
		
}