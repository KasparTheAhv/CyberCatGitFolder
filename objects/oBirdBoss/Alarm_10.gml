/// @desc drop egg

if instance_exists(oPlayerGod)
{
var cha=true;	
} else {var cha=false;}




with (instance_create_layer(x,y,"Characters",oEgg))
{
blendable=false;
image_blend=$4e4eff;
image_xscale=1;
image_yscale=1;
boom=true;
chase=cha;
cont=cha;
spd=6;
}
