/// @desc Spawn 3 bird at once
repeat(2)
{
	suund=choose(0,1);
mybirds+=1;	
	if (suund>0)
	{
	with (instance_create_layer(x,y,"Characters",oPenquin)) {hsp=irandom_range(2,4); whatbase=other.id;}
	} else {
	with (instance_create_layer(x,y,"Characters",oPenquin)) {image_xscale=-0.75;hsp=irandom_range(2,4)*(-1); whatbase=other.id;}
	}
}