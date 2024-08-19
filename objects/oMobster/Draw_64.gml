/// @desc
if (start!=2)
{
draw_sprite_ext(sprite_index,2,x-quarter_wid,y,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(sprite_index,0,x-quarter_wid,y,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(sprite_index,1,x+quarter_wid,yy+100,image_xscale,image_yscale,0,c_white,image_alpha);
} else {
draw_sprite_ext(sprite_index,0,x-quarter_wid,y,xscale,yscale,0,c_white,1);
draw_sprite_ext(sprite_index,1,x+quarter_wid,yy+100,xscale,yscale,0,c_white,image_alpha);
draw_sprite_ext(sprite_index,2,heartx,hearty,image_xscale,image_yscale,image_angle,c_white,1);
}
