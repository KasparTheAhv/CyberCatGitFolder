/// @desc also make player xd
if !instance_exists(oPlayer)
{
	with(instance_create_layer(x,y,"Characters",oPlayer))
	{
	superplatform=other.superplatform;
	hsp=other.hsp;
	vsp=other.vsp;
	sprite_index=global.sPlayer;
	image_xscale=other.image_xscale;
	landed=other.landed;
	jumping=other.jumping;
	walksp=other.walksp;
	lastSide=other.lastSide
	bulletshield=other.bulletshield;
	slow=other.slow;
	}
	instance_destroy();
}