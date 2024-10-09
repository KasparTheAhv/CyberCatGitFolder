/// @description Insert description here
// You can write your code in this editor
if (state==1) //stay
{
	draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1);	
}
if (state==2) // roam
{	
	draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,image_angle+alterang,c_white,1);
	draw_sprite_ext(sprite_index,2,x,y,image_xscale,image_yscale,image_angle+wingrot+alterang,c_white,1);
}