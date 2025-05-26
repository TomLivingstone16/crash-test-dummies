//Input Globals
global.leftKey = ord("A")
global.rightKey = ord("D")
global.upKey = ord("W")
global.downKey = ord("S")
global.interactKey = vk_enter
global.jumpKey = vk_space
global.pauseKey = vk_escape

//Set up Globals
global.highscores = 0 //Empty at beginning, will be set with values once score is loaded
global.score = {
	testLevel : 0,
	testLevel2 : 0,
	level1 : 0,
};
global.iPauseMenu = instance_create_depth(x,y,depth,oPauseMenu)

global.levelprogression = [rLevel1,rLevel2]
global.levelsUnlocked = 0
global.maxLevels = array_length(global.levelprogression)
global.gamePaused = false

global.roomsVisited = array_create(0)



depth = -99999999

//Load the data from file to overwrite defaults
LoadGame()