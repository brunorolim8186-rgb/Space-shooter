move_and_collide(hspeed,vspeed, obj_borda)

if global.vidas <= 0
{
	sprite_index = jogador_explos_o_completa
	global.controler_button_select = obj_back
}

global.x = x
global.y = y
global.vspeed = vspeed
global.hspeed = hspeed
if global.vidas > 3
{global.vidas = 3}
#region controler input
//controler input//_________________________________________
    vspeed = gamepad_axis_value(0, gp_axislv) *spdd       //
	hspeed = gamepad_axis_value(0, gp_axislh) *spdd       //
	if gamepad_button_check_pressed(0,gp_face2)           //
{
	if global.escudos >=1 and !global.shieldup  
{
global.escudos--
dmgb = 0
obj_escudo.sprite_index = spr_escudo
alarm[3] =5*60
alarm[4] =3*60
alarm[5] = 4.5*60
global.shieldup = 1
};
if global.shieldup == 1 
{
dmgb =0}else{dmgb = 1}
global.shieldend = 0
global.shield_ended = 0
}
    if gamepad_button_check_pressed(0,gp_face1)           //
{
	alarm[0] = 60
if cooldown == 0
{
global.shoot =1
instance_create_layer(x -3, y - 25, "shoot", bullet)
} 
}
	if gamepad_button_check(0,gp_face1) and ringed_big == 0 
	{
		alarm[9] = (2 * room_speed) + ( 1 * (room_speed / 2) )
		ringed_big = 1
		sprite_index = spr_jogador_charging
}else{
		alarm[0] = -1
		ringed_big = 0
		sprite_index = spr_jogador
}
if gamepad_button_check_released(0, gp_face1) and bigshot_ring == 1
{
	show_debug_message("ringed")
	ringed_big = 0
	sprite_index = spr_jogador
		alarm[0] = -1
}else if gamepad_button_check_released(0, gp_face1)
{	sprite_index = spr_jogador
		alarm[0] = -1}
//__________________________________________________________
#endregion




