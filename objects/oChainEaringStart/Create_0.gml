/// @desc
image_speed = 0 
image_index = 1
global.mitmes=0;
global.mitmes+=1;
depth=depth-14;
if (room==Room1) {sprite_index=sRing; image_blend=c_yellow;}
with (instance_create_layer(x,y,"Characters",oChainRing))
{
	grapPoint=other.id;
}
hsp=0;
vsp=0;
xdif=38*1;