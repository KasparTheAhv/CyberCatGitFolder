/// @desc



scribble("[fOrbitronBig][fa_center][fa_middle][scale,"+string(textscale)+"]"+string(message)).draw(pro_xx,pro_yy);

// [scale,"+string(textscale)+"]
// [scale,"+string(textscale)+"]

// stats text
scribble("[fOrbitronBig][fa_middle][fa_center][alpha,"+string(TXTalpha)+"]"+string(statstext)).fit_to_box(room_width,sta_hei).draw(stacolumn1x,sta_yMid);
scribble("[fOrbitronBig][fa_middle][fa_center][alpha,"+string(TXTalpha)+"]"+string(statstext2)).fit_to_box(room_width,sta_hei).draw(stacolumn2x,sta_yMid);




// reward rect
if (startreward) 
{
draw_rectangle(rewX2,sta_y1,rewDrawnX1,sta_y2,true);
//skin
draw_sprite_ext(sprite_index,image_index,skinpreviewX,skinpreviewY,2,2,0,c_white,1);
//


scribble("[fOrbitronBig][fa_center][fa_middle][scale,0.35][#4CFFFF]"+string(rewTXT)).draw(skinpreviewX,rH*0.35);


}

// must Vasak / parem box
draw_set_color(c_black);
draw_rectangle(0,sta_y1-10,sta_x1,sta_y2+10,false);
draw_rectangle(sta_x2,sta_y1-10,room_width,sta_y2+10,false);

// Jooned Promo / Stats
draw_set_color(c_white);
draw_roundrect_ext(pro_x1,pro_y1,pro_x2,pro_y2,20,20,true);
draw_rectangle_color(sta_x1,sta_y1,sta_x2,sta_y2,color1,color2,color3,color4,true);


if (PlayStats)
{
scribble("[fOrbitronBig][fa_center][fa_middle][scale,"+string(textscale)+"]"+"Leaderboards").draw(lea_xx,lea_yy);
scribble("[fOrbitronBig][fa_center][fa_middle][scale,"+string(textscale)+"]"+"Achievements").draw(ach_xx,ach_yy);
draw_roundrect_ext(ach_x1,ach_y1,ach_x2,ach_y2,20,20,true);
draw_roundrect_ext(lea_x1,lea_y1,lea_x2,lea_y2,20,20,true);
}