/// @desc COLLISIONS IN ONE PLACE

// Check if is colliding with anything
var who = instance_place(x,y,colliArray);

// Exit if no collision
if (who==noone) {whoIs=noone; exit;}

// Checking object index
switch (who.object_index) {
	
//////////// Electro case
case oBat:
if !(immune)
{
	play_sound(snOuch,false);	
	with (who)
	{
	var scale=image_xscale;	
	}
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
		hsp= 2*scale*(-1);
		vsp= 0;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}
break;

//////////// bullet dart case
case oBulletDart:
if !(immune) && !(bulletshield)
{
	instance_destroy(who);
	play_sound(snOuch,false);		
	var scale=choose(1,-1);
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
	superplatform=other.superplatform;
	hsp= 2*scale;
	vsp= -3;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
	}
	instance_destroy(oPlayer);
}

//////////// bullet money case
case oBulletMoney:
if (bulletshield)
{
	if !(who.bounced)
	{
	who.bounced=true;
	who.direction=who.direction+180+irandom_range(-45,45);
	who.image_angle=who.direction;
	}
}

if !(immune)
{
	instance_destroy(who);
	shot+=1;
	self.image_blend=c_orange;
	alarm[8]=30;
	
	if (shot>=4)
	{
		play_sound(snOuch,false);		
		var scale=choose(1,-1);
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
break;

//////////// bullet monkey case
case oBulletMonke:
if !(immune)
{
	instance_destroy(who);
	shot+=1;
	self.image_blend=c_orange;
	alarm[8]=30;
	if (shot>=2)
	{
	play_sound(snOuch,false);		
	var scale=choose(1,-1);
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
break;

//////////// bullet snow case
case oBulletSnow:
if !(immune)
{
	instance_destroy(who);
	shot+=1;
	self.image_blend=c_orange;
	alarm[8]=30;
	slow=0.8;
	if (shot>=3)
	{
	play_sound(snOuch,false);		
	var scale=choose(1,-1);
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
break;

////////////  squir bulletcase
case oBulletSquir:
if !(immune)
{
	var dir=who.direction;	
	
	if (dir>=90) && (dir<=270) {var scale=-1;} else {var scale=1;}
	
		
	instance_destroy(who);
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
break;

////////////  case
case oDog:
if !(immune)
{
	play_sound(snOuch,false);
	
	with (who)
	{
	var scale=image_xscale;	
	}
	
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
	superplatform=other.superplatform;
	hsp= 2*scale*(-1);
	vsp= -3;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}
break;

////////////  case
case oEgg:
if !(immune)
{
	var amp=1;
	play_sound(snOuch,false);
	with (who)
	{
	var scale=choose(1,-1);
	if (boom) {var amp=3;
		if (visible) && (global.GFX1==1)
		{
			part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part111,irandom_range(20,25));
		}
	instance_destroy(who);}
	}
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= 2*scale*amp;
	vsp= -3*amp;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}
break;

////////////  case
case oEggplant:
if !(immune)
{
	var amp=1;
	play_sound(snOuch,false);	
	var scale=choose(-1,1);
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= 2*scale*amp;
	vsp= -3*amp;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(who);
	instance_destroy(oPlayer);
}
break;

////////////  case
case oElectro:
if (room=Room3)
{
oLvlEnd.t1=true;
TaskDone(1);
}

with (who)
{
var sounded=soundon;
}

if (room==Room1Tester)
{
	oGUIBAR.hp=10;	
}


if (sounded)
{
	if (visible) && (global.GFX1==1)
	{
		part_particles_create(oRoomController.part_sys, x+(22*image_xscale),y,oRoomController.part10,irandom_range(14,25));
	}
play_sound(snElectrocuted,false);
}


if (who.x<self.x) {var dire=2} else {var dire=-2;}


with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp = dire;
vsp =-2;

if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}

if (room==Room3) {if (oGUIBAR.hp==80){ with (oEvent) {if (event_id==8) {alarm[0]=1;}}}}
if (room=Room3)
{
oLvlEnd.t1=true;
TaskDone(1);
}
	
if (room==Room15)
{
	if (oGUIBAR.task3!="")
	{
		TaskDone(3);
	}
}
instance_destroy(oPlayer);
with (oGUIBAR) {cn-=25;}
break;

////////////  case
case oFrogTon:
if !(immune)
{
	with (who)
	{
	var direct=point_direction(x,y,other.x,other.y);	
	}
	play_sound(snOuch,false);
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
	superplatform=other.superplatform;
	hsp = lengthdir_x(3,direct);
	vsp =-2;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
	with (oGUIBAR) {cn-=25;}
}
break;

////////////  case
case oGarlicBread:
if !(immune)
{
	var amp=1;
	play_sound(snOuch,false);	
	var scale=choose(-1,1);
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= 2*scale*amp;
	vsp= -3*amp;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(who);
	instance_destroy(oPlayer);
}
break;

////////////  case
case oGas:
if !(immune)
{
	var amp=1;
	play_sound(snOuch,false);	
	with (who)
	{
		if (boom)
		{
			amp=3;
			if (room==Room14)
			{
				text="The wiki forgot to mention\nit drops nukes instead of regular eggs";
				with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
				{
				target=oFollowPlayer;
				text = who.text;
				length = string_length(text);
				timer=140;
				}
			}		
		}	
		var direct=point_direction(x,y,other.x,other.y);	
	}
	
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
		hsp = lengthdir_x(3*amp,direct);
		vsp =-2*amp;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}
break;

////////////  case
case oHeliLizard:
if !(immune)
{
	play_sound(snOuch,false);	
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
	superplatform=other.superplatform;
	hsp= 2*choose(1,-1);
	vsp= -3;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}
break;

////////////  case
case oKey:
if (immune) {exit;}
if !(canatk) {exit;}
if !(keyheld) 
{
	canatk=false;
	keyheld=true;
	with(who)
	{
		if !(held) {held=true;}	
	}
}
if (room==Room0)
{
	if !(givenkeybook)
	{
		givenkeybook=true;
		TaskDone(1);
		TaskNew(2,"Escape the room");
	}	
}
break;

////////////  case
case oMushroom:
instance_destroy(who);
with(oGUIBAR)
{
oGUIBAR.hp+=10;
}
	with (instance_create_layer(x,y,"Characters",oNippy))
	{
		image_alpha=0;
	}
slow=1.2;
alarm[8]=60;
break;

////////////  case
case oNippy:
if (nonippyallowed) {exit;} // exit if not allowed to pick up catnip

// From inside the catnip object
with (who)
{
	// ask if it should give catnip book
	var givenippybook=forevercatnip;
	instance_destroy();
}

// summon catnip book if allowed
if (room==Room1) && (givenippybook) {SummonTutBook(oPlayer,6);}	

// play sound for eating catnip
play_sound(snCatnipCount,false);

if instance_exists(oGUIBAR)
{
	// get current stat count for catnip collected, increase it by 1 and save it back to ds map
	var settingsmap = ds_map_secure_load("settings.sav")
	var prevValue = ds_map_find_value(settingsmap,"STATS_Catnip");
	if is_undefined(prevValue){prevValue=0;}
	var neWvalue = prevValue+1;
	ds_map_set(settingsmap,"STATS_Catnip",neWvalue);
	ds_map_secure_save(settingsmap,"settings.sav");
	
	// Increase catnip meter by 25 units	
	oGUIBAR.cn+=25;
	
	// See who collected the nippy
	if instance_exists(oPlayer){target=oPlayer;}
	if instance_exists(oPlayerFall){target=oPlayerFall;}
	if instance_exists(oPlayerAttack){target=oPlayerAttack;}
	
	// If has enough for god state
	if (oGUIBAR.cn>=150)
	{
		// and no lightning exists
		if !instance_exists(oLightning)
		{
			// make the player immune
			oPlayer.immune=true;
			// and spawn lightning to targets location
			instance_create_layer(target.x,target.y,"Particles",oLightning);
		}
	}	
}

// if room == 2
if (room==Room2) 
{
	// and it's the first catnip eaten
	if (oRoomController.firstnippy!=1)
	{
		oRoomController.firstnippy=1;
		text="mmh.. catnip";
		// create chasing text for "mmh.. catnip
		with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-50,"Particles",oTextFloat))
		{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		}
	}
}
break;

////////////  case
case oRat:
if !(immune)
{
	play_sound(snOuch,false);	
	with (who)
	{
	var scale=image_xscale;	
	}
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
		hsp= 2*scale*(-1);
		vsp= -3;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}
break;

////////////  case
case oRatEvent:
if !(immune)
{
	play_sound(snOuch,false);
	with (who)
	{
	var scale=image_xscale;	
	}
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= 2*scale*(-1);
	vsp= -3;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}
break;

////////////  case
case oSeal:
if !(immune)
{
	play_sound(snOuch,false);	
	with (who)
	{
	var scale=image_xscale;	
	}
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= 2*scale*(-1);
	vsp= -3;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}
break;

////////////  case
case oSnake:
if !(immune)
{
	var exiter=true;
	var myside=sign(image_xscale);
	with (who)
	{
	var hisside=sign(image_xscale);
	var scale=image_xscale;
	if (attack) {if (image_index>=4) {var exiter=false;}} else {sprite_index=sSnakeMove;image_speed=1;alarm[0]=100;}
	if (myside!=hisside) {var exiter=false;}
	}
	
	
	if (exiter) {exit;}
	play_sound(snSlash,false);	
	with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
	hsp= 2*scale*(-1);
	vsp= -3;
	if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
	}
	instance_destroy(oPlayer);
}
break;

////////////  case
case oVine:
slow=0.3; alarm[8]=3;

if (immune) {exit;}

if (who.damage)
{
var dire=sign(image_xscale)*2*-1;

with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp = dire;
vsp =-2;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}

instance_destroy(self);
with (oVine) {maxsegnr=vinesegnr;}
}
break;

////////////  case
case oVineShield:
if instance_exists(oPumpkin)
{
	if (self.x<oPumpkin.x)
	{
	var dire=-3;	
	} else {var dire=3;}
} else {var dire=choose(-3,3);}


with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp = dire;
vsp =-2;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}

instance_destroy(self);
break;

////////////  case
case oWater:
if instance_exists(oBubbleShield) {
if (oBubbleShield.shielded)	{exit;}
}

var type=0;
with (who)
{
if (LiquidType==0) {type=0;} // vesi
if (LiquidType==1) {type=1;} // chemical
if (LiquidType==2) {type=2;} // lava
}


var myhsp=hsp;
var myvsp=vsp;
// basic vesi
if (type==0)
{
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part4,irandom_range(7,12));
	}
	with (instance_create_layer(x,y,"Characters",oPlayerFall))
	{
	superplatform=other.superplatform;
	image_blend=c_blue;
	oFollowPlayer.target=oPlayerFall;
	alarmer=false;
	hsp=myhsp*0.5;
	if (hsp>0) {image_xscale=0.75;}else{image_xscale=-0.75;}
	vsp=myvsp*0.7;
	image_speed=0;
	grv=0.2;
	collision=false;
	tilemap = layer_tilemap_get_id("Collision");
	tilemap2 = layer_tilemap_get_id("Platform");
	sprite_index=global.sPlayerF;
	die=true;
	alarm[1]=1;
	}
	play_sound(snSplashVette1,false);
	instance_destroy(self);
}
// chemical vesi
if (type==1)
{
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part24,irandom_range(7,12));
	}
	with (instance_create_layer(x,y,"Characters",oPlayerFall))
	{
	superplatform=true;
	image_blend=c_lime;
	oFollowPlayer.target=oPlayerFall;
	alarmer=false;
	die=false;
	hsp=choose(-1,1)*2;
	if (hsp>0) {image_xscale=0.75;}else{image_xscale=-0.75;}
	vsp=-4;
	image_speed=0;
	grv=0.2;
	collision=false;
	tilemap = layer_tilemap_get_id("Collision");
	tilemap2 = layer_tilemap_get_id("Platform");
	sprite_index=global.sPlayerF;
	alarm[1]=1;
	}
	play_sound(snSplashVette1,false);
	instance_destroy(self);
}
// lava
if (type==2)
{
	with (instance_create_layer(x,y,"Characters",oPlayerFall))
	{
		superplatform=other.superplatform;
		image_blend=c_red;
	oFollowPlayer.target=oPlayerFall;
	alarmer=false;
	hsp=myhsp*0.5;
	if (hsp>0) {image_xscale=0.75;}else{image_xscale=-0.75;}
	vsp=myvsp*0.7;
	image_speed=0;
	grv=0.2;
	collision=false;
	tilemap = layer_tilemap_get_id("Collision");
	tilemap2 = layer_tilemap_get_id("Platform");
	sprite_index=global.sPlayerF;
	die=true;
	alarm[1]=1;
	}
	play_sound(snSplashVette1,false);
	instance_destroy(self);
}
break;
// end
}