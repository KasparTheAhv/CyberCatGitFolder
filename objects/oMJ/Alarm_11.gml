/// @desc CypPort Death
if !(immune)
{
	immune=true;
	image_blend=c_red;
	alarm[8]=4;	
	self.elud-=20;	
	if (elud<=0) {instance_destroy();}
}