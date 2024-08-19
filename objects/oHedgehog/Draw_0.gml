/// @desc
if instance_exists(oPlayerGod)
{
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*curscale,image_yscale*curscale,image_angle,image_blend,1);
}else{
draw_self();
}
if (hyper)
{
	draw_sprite_ext(sprite_index,image_index,oFollowPlayer.x,oFollowPlayer.y,35,35,roter,c_rainbow,0.45);
}