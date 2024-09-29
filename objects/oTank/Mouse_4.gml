/// @desc
if !(driving)
{
		if instance_exists(oPlayer)
		{
			var who=oPlayer;
			if (point_distance(who.x,who.y,x,y)<50)	
			{
				
				with (oFollowPlayer) {target=instance_nearest(x,y,oTank);}
				instance_destroy(oPlayer);
				driving=true;
				
				UnlockNoteEgg("Egg",2);
			
				text="minecraft, cs go, cry of fear\n -aint nothing compared\n to world of tanks!";
				with (instance_create_layer(self.x,self.y-30,"Particles",oTextFloat))
				{
					extraheight=30;
					timer=200;
					target=instance_nearest(x,y,oTank);
					text = other.text;
					length = string_length(text);
				}
				
			}
		}
} else {
	if !(instance_exists(oPlayer))
	{
		driving=false;
		instance_create_layer(x,y,"Characters",oPlayer);
	}
}