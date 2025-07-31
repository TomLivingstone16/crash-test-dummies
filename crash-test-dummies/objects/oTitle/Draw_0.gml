//Draw Title Sprite
draw_sprite(sTitle,0,0,0)

//Set alpha value for the Press [Key] text
draw_set_alpha(alpha)

//Draw the Press [Key] text
draw_set_font(fText)
draw_set_halign(fa_middle)
draw_set_valign(fa_top)
OutlineText(320,300,string("PRESS [{0}]",KeyToString(global.interactKey)))

//Reset alpha to 1
draw_set_alpha(1)