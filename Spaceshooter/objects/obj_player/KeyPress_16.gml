//                     ----|\| -} Escudo {- |/|-------

if global.escudos >=1 and !global.shieldup and global.shieldable == 1
{
global.escudos --;
dmgb = 0
obj_escudo.sprite_index = spr_escudo
global.shieldable = 0
alarm[3] =5*60
alarm[4] =3*60
alarm[5] = 4.5*60
global.shieldup = 1
}
if global.shieldup =1 
{dmgb =0}else{dmgb = 1}
global.shieldend = 0
global.shield_ended = 0