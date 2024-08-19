/// @desc
if (current_state==fatmanstates.spit)
{
	
	
	
draw_sprite_ext(sFatManS,0,x,y,image_xscale,1.5,0,c_white,1);
draw_sprite_ext(sFatManS,1,headx,heady,1.5,image_yscale,image_angle,c_white,1);

} else {
draw_self();	
}
