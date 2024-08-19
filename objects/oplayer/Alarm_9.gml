///@desc trail fx
if (global.invisible) {exit;}

if (hsp!=0) or !(landed)
{
	with (instance_create_layer(x,y,"Characters",oTrail))
	{
		image_blend=other.image_blend;
		sprite_index=other.sprite_index;
		image_index=other.image_index;
		image_speed=0;
		image_xscale=other.image_xscale*other.catskinscale;
		image_yscale=other.catskinscale;
		image_angle=other.imangle;
	}
}
alarm[9]=2;
