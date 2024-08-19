function draw_cool_cnbar(){

draw_sprite_ext(sCNBAR_BACK,0,xx2,yy2,CnBarSca,CnBarSca,0,c_white,global.AL);
draw_sprite_part_ext(sCNBAR_HEALTH,0,0,0,ceil(bar_width2*(show_cn/(max_cn*CnBarSca))),bar_height2-1,xx2,yy2,CnBarSca,CnBarSca,c_white,global.AL);
//draw_sprite(sCNBAR_BORDER,0,xx2,yy2);
}