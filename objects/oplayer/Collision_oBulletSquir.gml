if !(immune)
{
var dir=other.direction;	

if (dir>=90) && (dir<=270) {var scale=-1;} else {var scale=1;}

	
instance_destroy(other);
shot+=1;
self.image_blend=c_orange;
alarm[8]=30;

if (shot>=3)
{
play_sound(snOuch,false);		

with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
	superplatform=other.superplatform;
hsp= 2*scale;
vsp= -3;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
}
instance_destroy(oPlayer);
}

}

