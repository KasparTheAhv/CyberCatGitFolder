/// @desc
if instance_exists(oPumpkin)
{
	if (self.x<oPumpkin.x)
	{
	var dire=-3;	
	} else {var dire=3;}
} else {var dire=choose(-3,3);}


with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp = dire;
vsp =-2;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}

instance_destroy(self);