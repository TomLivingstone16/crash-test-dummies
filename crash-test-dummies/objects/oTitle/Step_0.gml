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

if keyboard_check_pressed(vk_enter)
{
	RoomTransition(rTesting)
}