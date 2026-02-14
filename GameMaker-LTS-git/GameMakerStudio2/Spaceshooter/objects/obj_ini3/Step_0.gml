if vida == 0 
{sprite_index = inimigo_explos_o_completa}
randomise()
if id ==inst_4E9468B6
{
	vspeed=0
}
if morte == 1
{
	instance_destroy()
}
if y >= 200
{
	if ringed = 0
	{vspeed = 0}
	if ringed == 0
	{alarm_set(4, 3*60)
		ringed = 1 }
}
ttiro = choose(obj_bullet_ini3_t1, obj_bullet_ini3_t2)