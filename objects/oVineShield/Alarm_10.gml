/// @desc
if (whoimade!=noone)
{
if instance_exists(whoimade) {with (whoimade) {alarm[10]=1;}}
}
	instance_destroy(self);