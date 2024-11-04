/// @desc
if !CatIsNearClick() {exit;}
if !(instance_exists(oTextFloat))
{
	UnlockNoteEgg("Egg",2);
	text="Are those frogs dancing on what appears to\nbe a ham and cheese sandwiches from geometry dash?\nAnd failing to hit the griddy?";
	with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
	{
		target=oFollowPlayer;
		text = other.text;
		length = string_length(text);
		timer=180;
	}
}