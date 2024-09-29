/// @description Insert description here
// You can write your code in this editor
if (w==0) {exit;}
var halfw = w * 0.5;
var halfh = h * 0.5;
//draw the boxy around ze text
draw_set_colour($141414);
draw_set_alpha(0.9);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,20,20,false);
draw_set_colour(c_white);
draw_set_alpha(1.0);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,20,20,true);
scribble(string(textscale)+"[fOrbitronOut][fa_center][fa_middle]"+string(text_current)).draw(x,y-border-halfh);

