/// @description Insert description here
//You can write your code in this editor

//part_system_automatic_draw(part_sys,false);

if instance_exists(oMusicController)
{
oMusicController.alarm[2]=1;	
}
alarm[4]=1;
slower=1;
tilemap = layer_tilemap_get_id("Collision");
tilemap3 = layer_tilemap_get_id("CollisionSmall");
hsp = 0;
vsp = 0;
grv=0.0;
godparticle=global.godparticle;
immune=true;
startx=self.x;
starty=self.y;
walksp=1;
landed=false;
jumping=false;
sprite_index=global.sPlayerGod;
image_speed=1;
self.depth=depth-12;
catskinscale=global.catskinscale;
image_xscale=0.75;
image_yscale=0.75;
lastSide=image_xscale;
oFollowPlayer.target=oPlayerGod;
pulses=4;
alarm[5]=600;
// With commands to others:

if (room==Room31)
{
	with (instance_create_layer(x,y,"Particles",oLightningNoGod))
	{
	who=oMagicalStick;
	self.x=who.x;
	self.y=who.y;
	image_blend=c_aqua;
	}
	with (oMagicalStick)
	{
	charged=true;	
	}
}
with (oPigMono)
{
	instance_create_layer(x,y,"BefEdge",oCoinShield);
	curdir=0;
	pulsate=false;
	alarm[1]=100;
}
with (oMJ)
{
	alarm[3]=10;	
}

with (oClown)
{
	if !(hidden)
	{
	hidden=true;
	alarm[0]=300;
	self.x=0;
	self.y=0;
	}
}
with (oWolfKid)
{
oWolfKid.alarm[6]=1;
}
with (oWolfBoss)
{
oWolfBoss.alarm[6]=1;
}
if instance_exists(oBirdBoss)
{
	oBirdBoss.delay=20;
	oBirdBoss.state=birdstate.god;
	with (oBirdBoss)
	{
		delay=20;
		state=birdstate.god;
	}
}

with(oElGato)
{
oElGato.catnip=4;
oElGato.alarm[1]=60;
}
if (room=Room2) {
		oGUIBAR.task1="+ Task done!";	
		oGUIBAR.task1col="[#4CFF4C]";
}

if instance_exists(oClickHere){instance_destroy(oClickHere);}
if instance_exists(oPause) {oPause.joonista=false;}
if instance_exists(oMagnify) {oMagnify.joonista=false;}
if instance_exists(oBook) {oBook.previndex=oBook.image_index;oBook.image_index=3;oBook.joonista=false;}
if instance_exists(oFrogSpawner) {oFrogSpawner.alarm[3]=60;}
if instance_exists(oSquirrBase) {oSquirrBase.alarm[1]=60;oSquirrBase.alarm[3]=100;}
if instance_exists(oBirdBase) {oBirdBase.alarm[1]=100;oBirdBase.alarm[3]=100;}
if instance_exists(oGUIBAR){
	if (global.noheal!=true)
	{
		oGUIBAR.hp+=10;
	} else {global.noheal=false;}
	}
	

// changes in vstick
with(oVStick) {if (stick_id==2) {nulli=true;toimi=true;alarm[0]=10;}}
// cahnges in jumpkey
with(oJumpKey) {joonista=false;}

var lay_id= layer_get_id("Backgrounds");
layer_hspeed(lay_id,5);
var lay_id= layer_get_id("Backgrounds2");
layer_hspeed(lay_id,-7);
var lay_id= layer_get_id("Backgrounds3");
layer_hspeed(lay_id,-7);

// delete player and make gun
instance_destroy(oPlayer);
instance_create_layer(self.x,self.y,"Gun",oGun);

// leaves FX
if layer_exists("Leaves")	
{
layFX = layer_get_fx("Leaves");
prevspr = fx_get_parameter(layFX,"param_sprite");
}

// destroy all leftover nippy
instance_destroy(oNippy);

// make particle
with (oRoomController)
{
	if (global.GFX1==1)
	{
		part_particles_create(part_sys,other.startx,other.starty,part5,irandom_range(9,12));
	}
}

alarm[1]=100; // immune back to normal
alarm[2]=1; // particle bursts
with(oMagnify)
{
	zoomInd=4;
}
with(oSlimey)
{
	if (cur_state!=slistates.pool)
	{
	play_sound(snShot,false);	cooldown=true; alarm[3]=120; 
	image_speed=0;sprite_index=sSlimeyD; mutating=true; image_index=0;alarm[1]=1;bored=0;
	}	
}

var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_God");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_God",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");