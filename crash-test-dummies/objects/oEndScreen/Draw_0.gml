//Setup 
draw_set_halign(fa_right)
draw_set_valign(fa_middle)
draw_set_colour(c_white)
draw_set_font(fText)

draw_self();


OutlineText(600,320,string("Press [{0}] to continue",KeyToString(global.interactKey)))
