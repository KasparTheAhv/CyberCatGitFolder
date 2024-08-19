/// @desc howling controller
if (howlup)
{
if (image_index<5) {image_index+=1;alarm[0]=2;} else {howlup=false;alarm[0]=40;}
} else {
if (image_index>0) {image_index-=1;alarm[0]=2;} else {howllock=600; howlup=true;current_state=wolfstates.chase; alarm[1]=60;
	// Siia alla huntide spawnimine
// who
var who =oFollowPlayer;
if instance_exists(oPlayer) {who=oPlayer;}
if instance_exists(oPlayerAttack) {who=oPlayerAttack;}
if (instance_number(oWolfKid)<=4)
{
	with (instance_create_layer(who.x-220,who.y-150,"Characters",oWolfKid))
	{
		hsp=5;
		sprite_index=sWolfATK;
		current_state=wolfkidstates.attack;
		if instance_exists(oPlayerGod)
		{
			alarm[6]=2;
		}

	}

	with (instance_create_layer(who.x+220,who.y-150,"Characters",oWolfKid))
	{
		hsp=-5;
		sprite_index=sWolfATK;
		current_state=wolfkidstates.attack;
		image_xscale=-0.75;
			if instance_exists(oPlayerGod)
		{
			alarm[6]=2;
		}

	}
}	
	// end
	}	
}