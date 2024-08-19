/// @desc
with(oBird)
{
	if place_meeting(x,y,oBirdHider) {
	if (image_alpha>0) {image_alpha-=0.02;}
	} else {
	if (image_alpha<1) {image_alpha+=0.02;}	
	}	
}

// Check leaves
if place_meeting(x,y,oFollowPlayer)
{
	if (lastHide==1)
	{
		layer_enable_fx("Leaves", false);
		lastHide=0;	
	}
} else {
	if (lastHide==0)
	{
		    if (global.GFX3==1)
			{
			layer_enable_fx("Leaves",true);
			}
			lastHide=1;
	}	
}


