//If a laser field exists, play the hum sound
	//this is so we don't have each one playing the same constant sound over each other
if instance_exists(oLaserField)
{
	if !audio_is_playing(sndHum) audio_play_sound(sndHum,10,true)
}
else
{
	if audio_is_playing(sndHum) audio_stop_sound(sndHum)
}
