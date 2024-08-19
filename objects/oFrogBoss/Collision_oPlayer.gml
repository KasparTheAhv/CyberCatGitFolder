var myside = sign(other.x-self.x);
var temax=other.x;
var temay=other.y;




if !(other.immune)
{
if !(instance_exists(oPlayerFall))
{
	with (instance_create_layer(temax,temay-3,"Characters",oPlayerFall))
	{
	vsp= -6;
	hsp= 5*myside*2;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(other);
}
}