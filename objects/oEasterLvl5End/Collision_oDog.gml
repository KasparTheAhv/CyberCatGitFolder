if !(blocker)
{
	instance_destroy(oText);
	blocker=true;
		text="ok, bye I guess...";
		follow = instance_nearest(x,y,oDog);
		with (follow)
		{
			alarm[1]=600;
			alarm[2]=600;
			
		}
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	self.alarm[1]=100;
	UnlockNoteEgg("Egg",2);
oGUIBAR.task2="+ Task ignored";
oGUIBAR.task2col="[#4CFF4C]";

}