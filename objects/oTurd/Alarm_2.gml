/// @desc create text
text="Werner told me to keep watch..\nNo tree huggers allowed, only rats!";
follow = instance_nearest(x,y,oTurd);
with (instance_create_layer(follow.x,follow.y-40,"Particles",oText))
{
	whasound=511;
	target=other.follow;
	text = other.text;
	length = string_length(text); 
	who=noone;
}
	
alarm[3]=10;