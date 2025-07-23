draw_set_valign(fa_top)
draw_set_halign(fa_left)
if !(global.gamePaused or (instance_exists(oLevelEnder) && !gameCompleted) or oPlayer.state = PlayerStateDead or oPlayer.state = PlayerStateHit)

{
	var _w = string_width(toolTipString)+8
	var _h = string_height(toolTipString)+4
	draw_sprite_stretched(sTooltipBox,0,camera_get_view_x(view_camera[0])+x,camera_get_view_y(view_camera[0])+y,_w,_h)
	OutlineText(camera_get_view_x(view_camera[0])+x+4,camera_get_view_y(view_camera[0])+y,toolTipString)
}
