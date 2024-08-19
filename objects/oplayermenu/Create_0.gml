
sprite_index=mysprite;
if layer_exists("Background_1")
{
var cloudlay = layer_background_get_id("Background_1");
layer_background_xscale(cloudlay, 1);
layer_background_yscale(cloudlay, 1);
}
if layer_exists("Background")
{
var cloudlay = layer_background_get_id("Background");
layer_background_xscale(cloudlay, 1);
layer_background_yscale(cloudlay, 1);
}
yy=500;godInd=0;movegod=false;
if (sprite_index==sPlayerR)
{
	image_speed=1;image_xscale=0.75;image_yscale=0.75;	
	if variable_global_exists("global.sPlayerR"){sprite_index=global.sPlayerR;}	
}
if (sprite_index==sDogR){image_speed=1;image_xscale=0.7;image_yscale=0.7;}
if (sprite_index==sBird){image_speed=1;image_xscale=0.7;image_yscale=0.7; alarm[2]=450;}
if (sprite_index==sRatR){image_xscale=0.75;image_yscale=0.75;}



kumb=false;
//SCRIBBLE
sizer=0;
color="[#FFFFFF]";
textscaler=1.1;
textalpha="[alpha,"+string(0)+"]";
textscale="[scale,"+string(textscaler)+"]";


