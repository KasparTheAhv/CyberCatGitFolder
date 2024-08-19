if (cur_state==gatosta.fly)
{
	if (other.id==whatrat)	
	{
		if (other.x>self.x) {var myside = 1;} else {var myside=-1;}
		var temax=other.x;
		var temay=other.y;
		with (instance_create_layer(temax,temay-3,"Characters",oRatFall))
			{
			nonippy=true;
			vsp= -3;
			hsp= 3*myside;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
		catnip+=1;
		instance_destroy(other);
	} else {
	if (other.x>self.x) {var myside = 1;} else {var myside=-1;}
		var temax=other.x;
		var temay=other.y;
		with (instance_create_layer(temax,temay-3,"Characters",oRatFall))
			{
			nonippy=true;
			vsp= -3;
			hsp= 3*myside;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
		instance_destroy(other);	
		
	}
}