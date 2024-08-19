var myside = sign(image_xscale);
var temaside=sign(other.image_xscale);


if (myside==temaside)
{
	other.alarm[10]=1;
	var plax= sign(image_xscale)*0.75*16;
	instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
} else {
	
	play_sound(snSlash,false);

with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp= 2*temaside;
vsp= -3;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}
instance_destroy(self);
	
}


