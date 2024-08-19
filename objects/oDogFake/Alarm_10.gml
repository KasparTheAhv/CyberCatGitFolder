/// @desc How to attack

if !(instance_exists(oText))
{
	if (canatk) && (anger>=400)
	{
		var cat = noone;
		if !(instance_exists(oSnake)) {exit;}
		var who=instance_nearest(x,y,oSnake);
		if instance_exists(oPlayer) {cat=oPlayer;}
		if instance_exists(oPlayerGod) {cat=oPlayerGod;}
		if instance_exists(oPlayerAttack) {cat=oPlayerAttack;}
		if (cat == noone) {alarm[10]=4;exit;}
		if (point_distance(cat.x,cat.y,who.x,who.y)<100)
		{
			
	canatk=false;
	with (instance_create_layer(x,y-2,"Characters",oDogAttack))
	{
		startx=other.x;
		starty=other.y;
		sprite_index=sDogRF;
		image_index=3;
		helper=true;
		target=who;
		foreverchase=other.foreverchase;
	landed=false;
	jumping=true;
	// movement
	if (other.sprite_index==sDogR)
	{
		hsp=other.hsp;
		vsp=-7;
	}
	if (other.sprite_index==sDogA) 
	{
		vsp=other.vsp-1;
		hsp=other.hsp;
	}
	chase=other.chase;
	walksp=other.walksp;
	prevhsp=other.hsp;
	elud=other.elud;
	image_xscale=other.image_xscale;
	}
	instance_destroy();
	exit;
	}
	} 
}

if (chase) {alarm[10]=10;}