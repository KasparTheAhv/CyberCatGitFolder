/// @desc
if (sprite_index==sMonkeBana0) {exit;}
if instance_exists(oTextFloat) or instance_exists(oText) {exit;}
if !CatIsNearClick(){exit;}
UnlockNoteEgg("Egg",4);
text="You can pet cat. cat get ape banana. cat good!";
follow = instance_nearest(x,y,oMonkeNpc);

with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
{
	target=other.follow;
	text = other.text;
	length = string_length(text); 
	who=other.id;
}