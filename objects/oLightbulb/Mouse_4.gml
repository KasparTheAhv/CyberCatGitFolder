/// @desc

if instance_exists(oTextFloat) or instance_exists(oText) {exit;}
if !CatIsNearClick() {exit;}
UnlockNoteEgg("Egg",2);

text="That looks like the sun from OneShot";
follow = instance_nearest(x,y,oLightbulb);
with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
{
	target=other.follow;
	text = other.text;
	length = string_length(text); 
	who=other.id;
}