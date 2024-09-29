/// @description Insert description here
if (point_distance(x,y,mouse_x,mouse_y)>20) {exit;}

if instance_exists(oPlayer)
{
	if (point_distance(oPlayer.x,oPlayer.y,x,y)<90)
	{
		if (oRoomController.room16egg2Triggered==false)
		{
			oRoomController.room16egg2Triggered=true;
			text="I really shouldn't have eaten that.."
			follow = instance_nearest(x,y,oFollowPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
			{
				timer=240;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
			}
			UnlockNoteEgg("Egg",2);
			with(instance_create_layer(x,y,"Dog",oHat))
			{
				depth=self.depth-20;image_index=6;
				picked=true;oPlayer.picked=true;clicked=true;image_angle=360;		
			}
			instance_destroy(self);	
		}
	}
} 