/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1);
if (held)
{
	if (dir>365) && (dir<535)
	{
	draw_circle_color(x,y,30,c_lime,c_lime,true);
	draw_line(x,y,lineX,lineY);
	draw_sprite_ext(sAimTargetTreat,0,lineX,lineY,1,1,image_angle,c_white,1);	
	} else {	draw_circle_color(x,y,30,c_red,c_red,true);}
}