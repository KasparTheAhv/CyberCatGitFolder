/// @desc dead bird fade
// You can write your code in this editor
if instance_exists(oBirdFall)
{
	with (oBirdFall)
	{
	if (kustun) {if (image_alpha>0){image_alpha-=0.01;} else {instance_destroy(self);} }
	}
	alarm[2]=1;
} else {exit;}

