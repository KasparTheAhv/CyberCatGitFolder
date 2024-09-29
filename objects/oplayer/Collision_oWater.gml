if instance_exists(oBubbleShield) {
if (oBubbleShield.shielded)	{exit;}
}

var type=0;
with (other)
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