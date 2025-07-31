//If touching player, add to score value
if place_meeting(x,y,oPlayer)
{
	oScoreTracker.roomScore += value
	audio_play_sound(sndCollectible,8,false)
	instance_destroy()
}