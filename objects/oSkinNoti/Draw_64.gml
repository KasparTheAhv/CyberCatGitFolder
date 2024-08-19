/// @desc
draw_set_alpha(0.5);
draw_set_color(c_black)
draw_roundrect_ext(x1,startY,x2,currentY,40,40,false);
draw_set_color(c_white)
draw_roundrect_ext(x1,startY-2,x2,currentY,40,40,true);
draw_set_alpha(1);


draw_sprite_ext(sSkinToken,0,tokenX,midY,tokenscale,tokenscale,0,c_white,0.9);
scribble(string(textscale)+string(textalpha)+"[fa_center][fa_middle]"+string(coloure)+string(text)).draw(textXX,midY);