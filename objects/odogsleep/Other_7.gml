with (instance_create_layer(x,y,"Characters",oDog))
{
depth=depth-14;	
hsp=2*sign(other.image_xscale);
image_xscale=other.image_xscale;
chase=true;
if (room==Room4) {foreverchase=true;}
if (room==Room16) {foreverchase=true;}
}
instance_destroy(self);


