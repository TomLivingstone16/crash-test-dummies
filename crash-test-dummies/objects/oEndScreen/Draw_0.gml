//Setup 
draw_set_halign(fa_right)
draw_set_valign(fa_middle)
draw_set_colour(c_white)
draw_set_font(fText)

draw_self();

draw_set_color(c_black)
draw_text(601,320,string("Press [{0}] to continue",KeyToString(global.interactKey)))
draw_text(600,321,string("Press [{0}] to continue",KeyToString(global.interactKey)))
draw_text(599,320,string("Press [{0}] to continue",KeyToString(global.interactKey)))
draw_text(600,319,string("Press [{0}] to continue",KeyToString(global.interactKey)))
draw_set_color(c_white)
draw_text(600,320,string("Press [{0}] to continue",KeyToString(global.interactKey)))