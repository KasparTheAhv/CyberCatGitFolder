///@desc lightning start for no god
// You can write your code in this editor
play_sound(snLightning,false);
with (instance_create_layer(self.x+irandom_range(-300,300),0,"Particles",obj_lightning))
{
	play_sound(snLightning,false);
	toTarget=true;
	colorLight=c_red;
}
alarm[0]=20;
