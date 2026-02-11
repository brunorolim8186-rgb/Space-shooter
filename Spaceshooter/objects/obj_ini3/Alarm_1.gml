alarm[1]=60
if ttiro == obj_bullet_ini3_t1
{
var a = instance_create_layer(x+13, y+40, "shoot", obj_bullet_ini3_t2);
a.direction = 225;
a.image_angle = 315;
var b = instance_create_layer(x, y+40, "shoot", obj_bullet_ini3_t2)
b.direction = 270;
b.image_angle = 0;
var c = instance_create_layer(x-13, y+40, "shoot", obj_bullet_ini3_t2 )
c.direction = 315;
c.image_angle = 45;
}
if ttiro == obj_bullet_ini3_t2
{
	var c = instance_create_layer(x, y+40, "shoot", obj_bullet_ini3_t1 )
	c.speed = 4
	if object_exists(obj_player)
{
		c.direction  =  point_direction(x,y, obj_player.x, obj_player.y)
		c.image_angle = 	c.direction + 90 
}
}