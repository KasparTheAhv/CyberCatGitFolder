/// @desc
if (other.vsp>7) && !(self.activated) {
sprite_index=sBubble;
image_xscale=2;
image_yscale=2;
image_alpha=0;
activated=true;
shielded=true;
alarm[0]=60;
layer=layer_get_id("Gun");
}


if (activated)
{
	with (other) 
	{
	if place_meeting(x,y,oWater) {if (vsp>-3) {vsp-=0.5;}	}
	}
}