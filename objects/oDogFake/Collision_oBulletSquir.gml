if !(immune)
{
instance_destroy(other);
shot+=1;
self.image_blend=c_orange;
alarm[8]=30;

if (shot>=3)
{
var scale=choose(1,-1);
with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
hsp= 2*scale;
vsp= -3;
if (sign(hsp) !=0) image_xscale = sign(hsp);
}
instance_destroy(oPlayer);
}

}

