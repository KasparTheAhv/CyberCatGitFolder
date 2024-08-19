/// @desc Change States

if !(instance_exists(oPlayerGod))
{
	
	var choice=irandom_range(0,7);
	
	if (choice<=4)
	{
		image_angle=0;
			sprite_index=sElGatoSwordless;
		if (instance_exists(oPlayer)){var tar = oPlayer;}else{var tar = oFollowPlayer;}
		var targetx=tar.x;
		var targety=tar.y;
		dist =point_distance(x,y,targetx,targety)+100;
		dir =point_direction(x,y,targetx,targety);
		with (instance_create_layer(x,y,"Dog",oElGatoSword))
		{
		spd=10;
		maxDist=other.dist;
		depth=other.depth-5;
		dir=other.dir;	
		owner=other.id;
		}
		cur_state=gatosta.shoot;
	} else {
		if instance_exists(oRat) && (instance_number(oRat)>3) {
			image_angle=0;	sprite_index=sElGatoFly;
			whatrat = instance_nth_nearest(x,y,oRat,4);	cur_state=gatosta.fly;
			} else {
			image_angle=0; sprite_index=sElGatoSwordless;
		if (instance_exists(oPlayer)){var tar = oPlayer;}else{var tar = oFollowPlayer;}
		var targetx=tar.x;
		var targety=tar.y;
		dist =point_distance(x,y,targetx,targety)+100;
		dir =point_direction(x,y,targetx,targety);
		with (instance_create_layer(x,y,"Dog",oElGatoSword))
		{
		spd=8;
		maxDist=other.dist;
		depth=other.depth-5;
		dir=other.dir;	
		owner=other.id;
		}
		cur_state=gatosta.shoot;	
		}

	}
} else {alarm[0]=100;}