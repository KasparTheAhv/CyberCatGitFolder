/// @desc explode
audio_stop_sound(snGrilling);
with (instance_create_layer(x,y+10,"Characters",oGas))
{
	boom=true;
	image_xscale=2;
	image_yscale=2;
}
play_sound(snBlastBig);

if (visible) && (global.GFX1==1)
{
	part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(17,25));
}

instance_destroy();

UnlockNoteEgg("Egg",1);

text="Yeah, shouldn't have\ncooked that twice";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=140;
}