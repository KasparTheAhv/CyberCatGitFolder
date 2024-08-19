/// @desc dead rat fade
// You can write your code in this editor
if instance_exists(oRatFall)
{
	with (oRatFall)
	{
	if (kustun) {if (image_alpha>0){image_alpha-=0.01;} else {instance_destroy(self);} }
	}
	alarm[1]=1;
} 

if instance_exists(oBatD)
{
	with (oBatD)
	{
	if (kustun) {if (image_alpha>0){image_alpha-=0.01;} else {instance_destroy(self);} }
	}
	alarm[1]=1;
} 