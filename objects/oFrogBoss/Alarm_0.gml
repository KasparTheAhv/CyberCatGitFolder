alarm[0]=choose(200,120,90);



if !(move) && !(attacking) && (jumps>=2)
{	
if instance_exists(oPlayer)
{
	if (distance_to_object(oPlayer)<400) //tonque detection
	{
	if (oPlayer.y>self.y){platformblock=false;} else {platformblock=true;}
	jumps=0;
	allowedDist=distance_to_object(oPlayer)+200;
	cap=16*image_xscale;
	dir=point_direction(x,y-cap,oPlayer.x,oPlayer.y);
	instance_create_layer(x,y,"Particles",oWarning);
	alarm[3]=20;
	exit;
	}
	if (distance_to_object(oPlayer)<700)
	{
		alarm[1]=1;exit; // attack
	} else {alarm[2]=1;exit;}
} else {
if (instance_exists(oPlayerGod))
{
cap=16*image_xscale;
dir=point_direction(x,y-cap,oPlayerGod.x,oPlayerGod.y);
instance_create_layer(x,y,"Particles",oWarning);
alarm[4]=20;
exit;
}
	
	
alarm[2]=1; // jump randomly
}
} 

if !(move) && !(attacking) {var which=choose(1,2);
	if (which==1) {alarm[1]=1;} else {alarm[2]=1;}
	}	


