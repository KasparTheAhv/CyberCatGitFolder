/// @desc
if instance_exists(oTextFloat) or instance_exists(oText) {exit;}
if !CatIsNearClick() {exit;}
if (stare)
{
	var texter="I wish I could be up there\nwith my childhood brother...";
	with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
	{
		timer=120;
		target=other;
		text = texter;
		length = string_length(text);
	}
	UnlockNoteEgg("Egg",5);	
	stare=false;
	alarm[0]=160;
}