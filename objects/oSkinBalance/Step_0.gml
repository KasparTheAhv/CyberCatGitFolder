/// @desc
textalpha="[alpha,"+string(0.01*held2)+"]";
if (open)
{
	if (held<100) {held+=4;}		
	if (held==100) {if (held2<100){ held2+=4;}}
	if (held2==100) {
			if (mouse_check_button_released(mb_any))
			{
				open=false;
			}
		}
	exit;
}
if !(open)
{
	if (held2>0) {held2-=10} else 
	{
		if (held>0) {held-=10;}
	}
	if (held==0) {
		if (mouse_check_button_released(mb_any))
			{
				if (point_distance(x,y,mouse_x,mouse_y)<40)
				{
				open=true;
				}
			}	
	}
}

