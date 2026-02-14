if gamepad_is_connected(0)
{
    // Atualiza sprite
    if global.controler_button_select == obj_exit
    {
        sprite_index = spr_botao_exit_pressed;
    }
    else
    {
        sprite_index = spr_botao_exit;
    }
    
    // Ação ao pressionar A (gp_face1)
    if global.controler_button_select == obj_exit && gamepad_button_check_pressed(0, gp_face1)
    {
        // Se estamos na tela de título ou morte, sair do jogo
        if room == rm_titlescreen || room == rm_death
        {
            game_end();
            layer_sequence_create("sqnc", room_width/2, room_height/2, sqnc_transicao);
        }
    }
    
    // Navegação com analógico: depende da sala
    if global.controler_button_select == obj_exit && global.controller_axis_button_pressable == 1
    {
        var axis_val = gamepad_axis_value(0, gp_axislv);
        
        // Na tela de título
        if room == rm_titlescreen
        {
            if axis_val > 0.5
            {
                global.controler_button_select = obj_start;
                global.controller_axis_button_pressable = 0;
                alarm[0] = global.controller_axis_button_cooldown;
            }
            else if axis_val < -0.5
            {
                global.controler_button_select = obj_tutorial;
                global.controller_axis_button_pressable = 0;
                alarm[0] = global.controller_axis_button_cooldown;
            }
        }
        
        // Na tela de morte
        if room == rm_death
        {
            if axis_val > 0.5 || axis_val < -0.5
            {
                global.controler_button_select = obj_back;
                global.controller_axis_button_pressable = 0;
                alarm[0] = global.controller_axis_button_cooldown;
            }
        }
    }
}