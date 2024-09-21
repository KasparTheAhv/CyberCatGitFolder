///@desc lightning start for godmode
// You can write your code in this editor
instance_create_layer(x,y,"BefEdge",oBGLightningOnce);
instance_destroy(oAttackKey);
alarm[0]=15;
with (instance_create_layer(self.x+irandom_range(-300,300),0,"Particles",obj_lightning))
{
	play_sound(snLightning,false);
	toTarget=true;
	colorLight=$69ff69;
}
