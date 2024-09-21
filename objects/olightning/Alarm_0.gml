///@desc create lightning
with (instance_create_layer(self.x+irandom_range(-300,300),0,"Particles",obj_lightning))
{
	toTarget=true;
	colorLight=$69ff69;
}
alarm[1]=15;