// make the box appear
if (cur_state==adTokenStates.appear)
{
	if !(luba)
	{
		if (image_xscale<TargetScale)
		{
			var howmuch=0.1*TargetScale;
			image_xscale+=howmuch;
			image_yscale+=howmuch;
		} else {
			image_xscale=TargetScale;
			image_yscale=TargetScale;
			luba=true;
		}
	}
}

// make the box disappear
if (cur_state==adTokenStates.fade)
{
		if (image_xscale>0)
		{
			var howmuch=0.1*TargetScale;
			image_xscale-=howmuch;
			image_yscale-=howmuch;
		} else {
		instance_destroy();	
		}
}

// if waiting for response
// if (cur_state==adReviveStates.waiting)

