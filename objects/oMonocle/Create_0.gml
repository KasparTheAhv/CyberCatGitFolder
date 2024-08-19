/// @desc
image_speed=0;
targetscale=2;
image_xscale=0;
image_yscale=0;
section=0;
fromInner=13*2;
speeder=0;
laserStart=false;
laserAlpha=0;
tilemap = layer_tilemap_get_id("Collision");
laserRot=450;
		xx1=x;
		yy1=y;
		//
		xx2=x;
		yy2=y;
		
		xx3=x;
		yy3=y;
elud=4;
maxelud=4;


enum monoclestates
{
justspawned,
wander,
chase,
nothing,
laser,
rest,
ending,
}

current_state=monoclestates.justspawned;

hsp=0;
vsp=0;


whatydif=-17*2;
with (instance_create_layer(x,y-whatydif,"Characters",oChainEaringStart))
{
ydif=other.whatydif;	
if (room==Room1) {sprite_index=sRing; image_blend=c_yellow;}
}