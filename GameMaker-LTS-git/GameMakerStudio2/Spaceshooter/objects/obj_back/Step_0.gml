if gamepad_is_connected(0)
{
    // Atualiza sprite baseado na seleção
    if global.controler_button_select == obj_back
    {
        sprite_index = spr_botao_back_pressed;
    }
    else
    {
        sprite_index = spr_botao_back;
    }
    
    // Se este botão está selecionado e o jogador pressiona A (gp_face1)
    if global.controler_button_select == obj_back && gamepad_button_check_pressed(0, gp_face1)
    {
        // Se estamos na sala de morte, voltar para o título
        if room == rm_death
        {
            global.destino = rm_titlescreen;
            global.controler_button_select = obj_start; // Ao voltar para o título, selecionar o botão start
            layer_sequence_create("sqnc", room_width/2, room_height/2, sqnc_transicao);
        }
    }
    
    // Navegação com analógico: apenas se este botão está selecionado e o analógico foi movido
    // Note: na tela de morte, o botão back só tem um vizinho: obj_exit
    if room == rm_death
    {
        if global.controler_button_select == obj_back && global.controller_axis_button_pressable == 1
        {
            var axis_val = gamepad_axis_value(0, gp_axislv);
            if axis_val > 0.5 || axis_val < -0.5
            {
                global.controler_button_select = obj_exit;
                global.controller_axis_button_pressable = 0;
                alarm[0] = global.controller_axis_button_cooldown;
            }
        }
    }
    
    // Botão X (gp_face4) para voltar (funciona mesmo sem estar selecionado?)
    if gamepad_button_check_pressed(0, gp_face4)
    {
            global.destino = rm_titlescreen;
            global.controler_button_select = obj_start;
            layer_sequence_create("sqnc", room_width/2, room_height/2, sqnc_transicao);
        
    }
}