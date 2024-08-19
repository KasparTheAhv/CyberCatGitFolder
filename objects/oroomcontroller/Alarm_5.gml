/// @desc dead frog fade
// You can write your code in this editor
if instance_exists(oFrogD)
{
	with (oFrogD)
	{
	if (image_alpha>0){image_alpha-=0.01;} else {global.info="del";instance_destroy(self);} 
	}
	alarm[5]=1;
} else {exit;}

