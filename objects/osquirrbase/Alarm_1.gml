/// @desc Spawn bird
// You can write your code in this editor
if (activated)
{
	if instance_exists(oPlayerGod)
	{
		if (global.isAndroid) {var extrabirds=4;} else {var extrabirds=6;}
		if (mybirds<maxbirds+extrabirds)
		{
			mybirds+=1;
	with (instance_create_layer(x,y,"Characters",oSquir))
		{
			shootrange=230*3;
			timermod=0.75;
			speedmod=1.5;
			depth=other.depth-10;
			whatbase=other.id;
		} alarm[1]=choose(100,80,120); exit;
		}
		
	} else {	
		if (mybirds<maxbirds)
		{
			mybirds+=1;
			with (instance_create_layer(x,y,"Characters",oSquir))
			{
				depth=other.depth-10;
				whatbase=other.id;
			}
		}
	}
} else if (instance_exists(oPlayerGod))
	{
		if (global.isAndroid) {var extrabirds=4;} else {var extrabirds=6;}
		if (mybirds<maxbirds+extrabirds)
		{
			mybirds+=1;
			with (instance_create_layer(x,y,"Characters",oSquir))
			{
				shootrange=230*3;
				timermod=0.75;
				speedmod=1.5;
				depth=other.depth-10;
				whatbase=other.id;
			} alarm[1]=choose(100,80,120); exit;
		}
	}
alarm[1]=choose(170,150,200);