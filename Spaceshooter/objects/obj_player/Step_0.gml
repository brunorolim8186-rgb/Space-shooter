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

#region controler input
//controler input//_-__-----_-----_---_–______----_-----
    vspeed = gamepad_axis_value(0, gp_axislv) *spdd
	hspeed = gamepad_axis_value(0, gp_axislh) *spdd
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
//-----_-----_--_-----___------___------------_______---
#endregion
if global.vidas > 3
{global.vidas = 3}