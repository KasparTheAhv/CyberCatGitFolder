/// @desc
if instance_exists(oTextFloat) or instance_exists(oText) {exit;}
UnlockNoteEgg("Egg",4);
text="I wish I was human.\nLana is such a milf!";
follow = instance_nearest(x,y,oLana);
with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
{
	target=other.follow;
	text = other.text;
	length = string_length(text); 
	who=other.id;
}