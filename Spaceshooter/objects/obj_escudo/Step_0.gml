// STEP EVENT
// Atualiza a posição
x = global.x;
y = global.y;

// Se o escudo está ativado
if (global.shieldup == 1)
{
    // Se antes estava desativado, reinicia a animação
    if (visible == 0)
    {
        visible = 1;
        image_index = 0; // Começa do primeiro frame
        image_speed = 1;
        anmtend = 0;
        // Garante que está usando o sprite do escudo
        sprite_index = spr_escudo;
        image_blend = c_white;
    }
    
    // Se a animação chegou ao último frame, para a animação
    if (image_index >= image_number - 1)
    {
        image_speed = 0;
        anmtend = 1; // Marca que a animação terminou
        
        // Ativa a explosão após um breve delay (opcional)
        // alarm[0] = 10; // Se quiser delay
        // ou ativa imediatamente:
        global.shield_ended = 1;
    }
}
else if (global.shield_ended == 1) // Se o escudo terminou (explosão)
{
    // Troca para animação de explosão
    sprite_index = jogador_explos_o_completa;
    image_blend = make_color_rgb(164,92,234);
    image_speed = 0.5; // Mais lento para ver melhor (20 era muito rápido)
    
    // Garante que está visível
    visible = 1;
    
    // Se a explosão terminou, reseta tudo
    if (image_index >= image_number - 1) 
    {
        // Reseta o sistema
        global.shield_ended = 0;
        global.shieldup = 0;
        visible = 0;
        sprite_index = spr_escudo; // Volta ao sprite do escudo
        image_blend = c_white;
        anmtend = 0;
    }
}
else // Se o escudo está desativado (sem explosão)
{
    visible = 0;
    image_speed = 0;
    anmtend = 0;
    // Mantém o sprite como escudo para próxima vez
    sprite_index = spr_escudo;
    image_blend = c_white;
}

vspeed = global.vspeed;
hspeed = global.hspeed;


