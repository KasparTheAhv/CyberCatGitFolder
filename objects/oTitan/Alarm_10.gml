/// @desc make shockwaves
if (times>0)
{
	if (image_index==0)
	{
		instance_create_layer(x,y-45,layer,oShockwave);
		image_index=1;
		times-=1;
		alarm[10]=30;
	} else {
	image_index=0;
	alarm[10]=10;
	}
} else {
times=2;
alarm[0]=1;
spitdelay=200;
}