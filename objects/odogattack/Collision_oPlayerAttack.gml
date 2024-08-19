if (helper) {exit;}

if !(other.immune)
{
if (phase!=0)
{
var myside = image_xscale;
var temax=other.x;
var temay=other.y;
with (instance_create_layer(temax,temay-3,"Characters",oPlayerFall))
	{
	vsp= -3;
	hsp= 3*myside;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
	}
	instance_destroy(other);
}
}