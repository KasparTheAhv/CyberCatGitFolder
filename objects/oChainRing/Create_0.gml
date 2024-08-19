//CREATE EVENT
grapPoint=noone;
state = 0;
hsp = 0;
vsp = 0;
weirdAccel = -0.2;
stopAccel = 0.99;
//grapPoint = instance_nearest(x,y,oPlayer);
myID = id;
angleFlop = 0.01;
segmentSpeed = -3;
mitmes=0;
imangle=450;
depth=depth-2;



mitmesarv=3;
if (room==Room1) {mitmesarv=12;}

if (global.mitmes<=mitmesarv)
{
	global.mitmes+=1;
	with (instance_create_layer(x,y+4,"Characters",oChainRing))
	{
		grapPoint=other.id;
		if (room==Room1) {sprite_index=sRing; image_blend=c_yellow;}
	}
} 

else {
	with (instance_create_layer(x,y+2,"Characters",oChainEnd))
{
	grapPoint=other.myID;
	if (room==Room1) {sprite_index=sRing; image_blend=c_yellow;}
}

}
