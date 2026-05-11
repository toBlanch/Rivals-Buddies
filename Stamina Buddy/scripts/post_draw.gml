var fs_meter = sprite_get("hud_meter");
with oPlayer if "fs_char_initialized" in self && !clone  {		
    var hx = view_get_xview() + hud_x - 100;
    var hy = view_get_yview() + hud_y;
    draw_sprite_stretched(fs_meter,0,hx,hy,162,8);
    draw_sprite_general(fs_meter,1,1,0,stamina/100 * 79,4,hx+2,hy,2,2,0,c_white,c_white,c_white,c_white,1);
}