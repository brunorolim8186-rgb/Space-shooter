if gamepad_is_connected(0)
{
    // Atualiza sprite
    if global.controler_button_select == obj_tutorial
    {
        sprite_index = spr_botao_tutorial_pressed;
    }
    else
    {
        sprite_index = spr_botao_tutorial;
    }
    
    // Ação ao pressionar A (gp_face1)
    if global.controler_button_select == obj_tutorial && gamepad_button_check_pressed(0, gp_face1)
    {
        if room == rm_titlescreen
        {
            global.destino = rm_tutorial;
            layer_sequence_create("sqnc", room_width/2, room_height/2, sqnc_transicao);
        }
    }
    
    // Navegação com analógico (apenas na tela de título)
    if room == rm_titlescreen && global.controler_button_select == obj_tutorial && global.controller_axis_button_pressable == 1
    {
        var axis_val = gamepad_axis_value(0, gp_axislv);
        if axis_val > 0.5
        {
            global.controler_button_select = obj_exit;
            global.controller_axis_button_pressable = 0;
            alarm[0] = global.controller_axis_button_cooldown;
        }
        else if axis_val < -0.5
        {
            global.controler_button_select = obj_start;
            global.controller_axis_button_pressable = 0;
            alarm[0] = global.controller_axis_button_cooldown;
        }
    }
}