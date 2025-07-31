//creates floating down effect
if xposVal <= -0.5
{
	xposValWave = 1
}
else if xposVal >= 0.5
{
	xposValWave = -1
}

xposVal += xposValWave/50

x += xposVal
y += 0.5

show_debug_message(xposVal)
show_debug_message(xposValWave)