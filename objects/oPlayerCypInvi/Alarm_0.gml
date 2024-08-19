///@desc explode and create playerattack if 

part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part17,irandom_range(50,60));
part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part18,irandom_range(40,50));
audio_stop_sound(snPulse);


myside=sign(hsp);
with(mytarget) {myside=other.myside; alarm[11]=1;}

var whatx=x;
var whaty=y;
if instance_exists(mytarget)
{
whatx=mytarget.x;
whaty=mytarget.bbox_bottom;	
}

if !instance_exists(oPlayer)
{
with(instance_create_layer(whatx,whaty-13,"Characters",oPlayer))
{
superplatform=other.superplatform;
immune=true;
hspimmune=true;
if (room!=Room21)
{
alarm[4]=30;
} else {
	if instance_exists(oTimer)
	{
		if (oTimer.seconds>0) {alarm[4]=30;}	
	}
}
hsp=sign(other.hsp)*3;
vsp=-1;
sprite_index=global.sPlayer;
image_xscale=other.image_xscale;
image_blend=c_blue;
alarm[8]=30;
landed=other.landed;
jumping=other.jumping;
walksp=other.walksp;
lastSide=other.lastSide
}
instance_destroy();
}

