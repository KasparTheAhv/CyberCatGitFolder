/// @desc
if !(immune)
{
	immune=true;

image_blend=c_red;
alarm[8]=20;

self.elud-=20;

if (elud<=0) {instance_destroy();}
var plax= sign(image_xscale)*0.75*16;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
}