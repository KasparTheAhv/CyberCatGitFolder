/// @desc
if (instance_exists(oPlayer))
{
	if (point_distance(x,y,oPlayer.x,oPlayer.y)<70)
	{
		if (point_distance(x,y,mouse_x,mouse_y)<10)
		{
			if (attached)
			{
			image_speed=1;	
			attached=false;		
			}
		}
	}
} 