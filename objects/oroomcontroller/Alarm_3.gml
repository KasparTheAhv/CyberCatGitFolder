/// @desc dead squir fade
// You can write your code in this editor
if instance_exists(oSquirFall)
{
	with (oSquirFall)
	{
	if (kustun) {if (image_alpha>0){image_alpha-=0.01;} else {instance_destroy(self);} }
	}
	alarm[3]=1;
} else {exit;}

