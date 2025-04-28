depth = -9999999999999999999


options[0] = ["Resume","Reset Level", "Settings","Quit to Title","Quit to Desktop"] //Base Menu
options[1] = ["Controls", "Back"] //Settings Menu
options[2] = [
	"Left: " + KeyToString(global.leftKey),
	"Right: " + KeyToString(global.rightKey),
	"Up: " + KeyToString(global.upKey),
	"Down: " + KeyToString(global.downKey),
	"Interact: " + KeyToString(global.interactKey),
	"Jump: " + KeyToString(global.jumpKey),
	"Pause: " + KeyToString(global.pauseKey),
	"Back"
	]


menuLevel = 0;
selectedOption = 0