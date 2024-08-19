///@desc spawn rat
suund=choose(1,0);

if (activated)
{
	if instance_exists(oPlayerGod)
	{
		if (mybirds<maxbirds+4)
		{
mybirds+=1;	
	if (suund>0)
	{
	with (instance_create_layer(x,y,"Characters",oRat)) {hsp=irandom_range(2,4); whatbase=other.id;}
	} else {
		with (instance_create_layer(x,y,"Characters",oRat)) {image_xscale=-0.75;hsp=irandom_range(2,4)*(-1); whatbase=other.id;}
	}
	alarm[1]=choose(60,80,100); exit;
		}
		
	} else {	
		if (mybirds<maxbirds)
		{
		mybirds+=1;	
	if (suund>0)
	{
	with (instance_create_layer(x,y,"Characters",oRat)) {hsp=irandom_range(2,4); whatbase=other.id;}
	} else {
		with (instance_create_layer(x,y,"Characters",oRat)) {image_xscale=-0.75;hsp=irandom_range(2,4)*(-1); whatbase=other.id;}
	}
		}
	}
} else if (instance_exists(oPlayerGod))
	{
		if (mybirds<maxbirds+4)
		{
mybirds+=1;	
	if (suund>0)
	{
	with (instance_create_layer(x,y,"Characters",oRat)) {hsp=irandom_range(2,4); whatbase=other.id;}
	} else {
		with (instance_create_layer(x,y,"Characters",oRat)) {image_xscale=-0.75;hsp=irandom_range(2,4)*(-1); whatbase=other.id;}
	} alarm[1]=choose(60,80,100); exit;
		}
	}
alarm[1]=choose(100,150,200);