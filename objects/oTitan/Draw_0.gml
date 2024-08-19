if (current_state!=titanstates.eat)
{
draw_self();	
}
else 
{
draw_self();
draw_sprite_ext(sPlayerR,6,handx,handy,0.75,0.75*sign(image_xscale),90,c_white,1);
}