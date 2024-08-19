/// @desc
if !(activated) {exit;}

if (hintid==1)
{
	//requirements
	if (oGUIBAR.cn>=50)
	{
	//result
	hintid=noone;
		text="I've got a feeling there's rat\nsomewhere under this tree.";
		follow = instance_nearest(x,y,oFollowPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
	instance_destroy(self);
	} else {exit;}
}