/// @description Insert description here

if instance_exists(oFlakSihik)
{
draw_set_alpha(0.25);
draw_line_color(x,y,oFlakSihik.x,oFlakSihik.y,c_lime,c_lime);	
draw_set_alpha(1);
}

// taga Jalg
draw_sprite_ext(sprite_index,1,x,y,0.75,0.75,0,c_white,image_alpha);

// Kere

draw_sprite_ext(sprite_index,index,xx,yy,image_xscale,image_yscale,image_angle,c_white,image_alpha);

// front jalg
draw_sprite_ext(sprite_index,0,x,y,0.75,0.75,0,c_white,image_alpha);