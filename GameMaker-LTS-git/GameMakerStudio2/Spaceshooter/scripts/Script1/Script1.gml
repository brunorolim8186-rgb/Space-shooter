#region global variables
global.shoot =0
global.dmg=0
global.vidas = 3
global.escudos = 3
global.x =144
global.y =385
global.vspeed = 0
global.hspeed = 0
global.shieldend = 0;
global.shield_ended = noone
global.controler_button_select = obj_start
global.controller_axis_button_cooldown = 10
global.controller_axis_button_pressable =1
global.dead = 0
global.kills = 0
global.charged_unlucked = 0
global.shieldable = 1
#endregion


function warp ()
{
	room_goto(global.destino)
}
/// @function draw_text_sharp_ext(x, y, text, sep, w, xscale, yscale, angle)
function pause ()
{
	layer_sequence_pause(sqnc_ini1)
}
function unpause ()
{
	layer_sequence_play(sqnc_ini1)
}
 
 function destroy_sequence_ini2 ()
 {
	 sequence_destroy(sqnc_ini2)
 }
 function destroy_sequence_ini1 ()
 {
	 sequence_destroy(sqnc_ini1)
 }