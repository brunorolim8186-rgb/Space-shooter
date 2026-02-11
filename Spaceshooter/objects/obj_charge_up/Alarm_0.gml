if global.charged_unlucked == 0
{
	instance_create_layer(random_range(0, 280), 100, "Instances", obj_charge_up)
	alarm[0] = 15*room_speed
}
