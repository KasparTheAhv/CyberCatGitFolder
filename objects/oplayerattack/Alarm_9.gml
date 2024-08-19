/// @desc make player
// You can write your code in this editor
if !instance_exists(oPlayer)
{
	if !instance_exists(oLightning)
	{
	with(instance_create_layer(x,y,"Characters",oPlayer))
	{
	superplatform=other.superplatform;
	immune=true;
	alarm[4]=20;
	image_blend=c_yellow;
	hsp=other.hsp;
	vsp=other.vsp;
	sprite_index=global.sPlayer;
	image_xscale=other.image_xscale;
	image_blend=c_yellow;
	alarm[8]=30;
	landed=other.landed;
	jumping=other.jumping;
	walksp=other.walksp;
	lastSide=other.lastSide
	bulletshield=other.bulletshield;
	slow=other.slow;
	}
	instance_destroy();
	}
}

