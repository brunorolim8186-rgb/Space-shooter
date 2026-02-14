draw_set_font(Font1);
draw_sprite_ext(spr_skull, 0, 210, 25, 1.5, 1.5, 0, c_white, 100)
draw_text_ext(
    230,
    12,
    "x" + string(global.kills),
    10,
    300
);
