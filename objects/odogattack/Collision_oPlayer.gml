if (helper) {exit;}

if (phase!=0)
{
var myside = image_xscale;
var temax=other.x;
var temay=other.y;

if !(other.immune)
{
if !(instance_exists(oPlayerFall))
{

with (instance_create_layer(temax,temay-3,"Characters",oPlayerFall))
	{
	vsp= -3;
	hsp= 3*myside;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(other);
}
}
}