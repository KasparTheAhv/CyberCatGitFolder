/// @desc How to attack
show_debug_message("start ATtack decision");
var jumpselected = false;
if !instance_exists(oPlayerAttack) && (canatk)
{
	with (instance_create_layer(x,y-3,"Characters",oPlayerAttack))
	{
	
	// movement
	if (other.jumping) && !(jumpselected) // (other.sprite_index==sPlayerA) 
	{
		jumpselected=true;
		vsp=other.vsp;
		hsp=other.hsp;
		imangle=other.imangle;
	}
	
	if !(jumpselected) && !(other.jumping) 
	{
		if (other.hsp==0)
		{
			jumpselected=true;
			if (other.image_xscale>0) {hsp=2;} else {hsp=-2;}
			vsp=-4;
		} else {	
		jumpselected=true;
		hsp=other.hsp;
		vsp=-1.5-(other.walksp);
		}
	}
	sprite_index=global.sPlayerD;
	superplatform=other.superplatform;
	landed=false;
	jumping=true;
	lastSide=other.lastSide;
	walksp=other.walksp;
	prevhsp=other.hsp;
	bulletshield=other.bulletshield;
	slow=other.slow;
	image_xscale=other.image_xscale;
	if (sign(image_xscale)==1) {parter=oRoomController.part16;} else {parter=oRoomController.part166;} 
	}
	instance_destroy();
}

show_debug_message("end attack decision");