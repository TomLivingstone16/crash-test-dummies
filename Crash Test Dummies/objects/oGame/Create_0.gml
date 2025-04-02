

//Set up Globals
global.highscores = [] //Empty array at beginning
global.score = {
	testLevel : 0,
};

//Input Globals
global.leftKey = ord("A")
global.rightKey = ord("D")
global.jumpKey = vk_space


depth = -99999999

LoadScore()