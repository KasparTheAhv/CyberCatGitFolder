function draw_cool_healthbar()
{
draw_sprite_ext(sHPBAR_BACK,0,xx,yy,HpBarSca,HpBarSca,0,c_white,global.AL);
draw_sprite_part_ext(sHPBAR_HEALTH,0,0,0,ceil(bar_width*(show_hp/floor(max_hp*HpBarSca))),bar_height,xx,yy,HpBarSca,HpBarSca,c_white,global.AL);
draw_sprite_ext(sHPBAR_BORDER,0,xx,yy,HpBarSca,HpBarSca,0,c_white,global.AL);
}
