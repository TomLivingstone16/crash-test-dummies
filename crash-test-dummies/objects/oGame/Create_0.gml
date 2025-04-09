//Set up Globals
global.highscores = 0 //Empty at beginning
global.score = {
	testLevel : 0,
	testLevel2 : 0,
};

global.levelprogression = [rTesting,rTesting2]



//Input Globals
global.leftKey = ord("A")
global.rightKey = ord("D")
global.jumpKey = vk_space


depth = -99999999

//Load the high scores array from file
LoadScore()