//Input Globals
global.leftKey = ord("A")
global.rightKey = ord("D")
global.upKey = ord("W")
global.downKey = ord("S")
global.interactKey = vk_enter
global.jumpKey = vk_space
global.pauseKey = vk_escape

//Set up Globals
global.highscores = 0 //Empty at beginning
global.score = {
	testLevel : 0,
	testLevel2 : 0,
};
global.iPauseMenu = instance_create_depth(x,y,depth,oPauseMenu)
global.levelprogression = [rTesting,rTesting2]
global.gamePaused = false




depth = -99999999

//Load the high scores array from file
LoadScore()