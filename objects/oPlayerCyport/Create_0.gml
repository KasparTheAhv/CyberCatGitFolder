hsp = 0;
vsp = 0;
grv=0.2;
play_sound(snRAWR,false);
stick_id=oVStick.stick_id;
tilemap = layer_tilemap_get_id("Collision");
tilemap2 = layer_tilemap_get_id("Platform");
tilemap3 = layer_tilemap_get_id("CollisionSmall");
walksp=1.5;
landed=noone;
locker=false;
image_speed=1;
jumping=noone;
lastSide=image_xscale;
oFollowPlayer.target=oPlayerCyport;
prevhsp=noone;
self.depth=depth-12;
doglock=false;
alarm[8]=1;
alarm[10]=15;
sprite_index=global.sPlayerD;
catskinscale=global.catskinscale;
image_yscale=0.75;
allowlandsn=true;
imangle=0;

with (oBirdBoss)
{
	go=false;flipper=1;hspeed=0;vspeed=0;speed=3;image_speed=1;canatk=false;image_angle=0;
		xMod=irandom_range(-40,40);
		yMod=irandom_range(0,20);
		state=birdstate.fly;
}