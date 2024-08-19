/// @desc trail
// You can write your code in this editor
with (instance_create_layer(x,y,"Characters",oTrail))
{
	image_blend=other.image_blend;
	sprite_index=other.sprite_index;
	image_index=other.image_index;
	image_speed=0;
	image_xscale=other.image_xscale;
	image_yscale=other.image_yscale;
}
if (current_state=dinostates.charge) {alarm[9]=2;}