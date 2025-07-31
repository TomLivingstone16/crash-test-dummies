#region //Alpha Effect
if alpha <= 0
{
	alphaWave = 1
}
else if alpha >= 1
{
	alphaWave = -1
}

alpha += alphaWave/50
#endregion

//If we press the interact key, go to level select
if keyboard_check_pressed(global.interactKey)
{
	RoomTransition(rLevelSelect)
}