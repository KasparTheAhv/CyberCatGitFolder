var frogsalive=instance_number(oFrog);
txt=frogstokill;

if (frogstokill<=0) {alarm[4]=120;exit;
	}
if (done) {alarm[0]=20; exit;}

if (frogsalive<maxfrogs)
{
	if (randomSpawn)
	{
	var xx=rW*(irandom_range(10,90)*0.01);
	instance_create_layer(xx,0,"Dog",oFrog);
	}
	else
	{
	instance_create_layer(x,y,"Dog",oFrog);	
	}
}
alarm[0]=choose(20,40,60,80);