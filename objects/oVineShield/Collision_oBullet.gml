/// @desc
if (elud>0) { 
oGUIBAR.cn+=0.5;
elud-=1; image_blend=c_red;alarm[8]=10;} else 
{
	if instance_exists(whoimade) {with (whoimade) {alarm[10]=1;}}
	instance_destroy(self);
}
