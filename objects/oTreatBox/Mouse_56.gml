/// @description Insert description here
// You can write your code in this editor
// throw treat
if (held)
{
if (dir>365) && (dir<535)
{
	with(instance_create_layer(x,y,"Treat",oDogTreat))
	{
	alarm[0]=5;
	alarm[1]=500;
	direction=other.dir;	
	speed=other.dist*0.1;
	gravity=0.2;
	gravity_direction=270;
	}	
}
// reset
dir=0
dist=0;
lineX=x;
lineY=y-5;
held=false;
}