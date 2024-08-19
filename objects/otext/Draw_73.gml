/// @description Insert description here
// You can write your code in this editor
if (w==0) {exit;}
var halfw = w * 0.5;

//draw the boxy around ze text
draw_set_colour(c_black);
draw_set_alpha(1.0);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,20,20,false);
draw_set_colour(c_white);
draw_set_alpha(1.0);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,20,20,true);

/// DRAW TEXT
DrawSetText(c_white,fOrbitronNote,fa_center,fa_top);
draw_text_transformed(x,y-h-border,text_current,texterscale,texterscale,0);
draw_set_alpha(1);
if (skiprdy)
{
draw_sprite_ext(sSkip,0,x+halfw+border,y,texterscale,texterscale,0,c_white,1);
}