

if !(clicked) && (expanded==1)
{
		if !(extrastats) {
	expanded=1;
	}
}
extrastats=false;

if (expanded==1)
{
if !(point_in_rectangle(mouse_x,mouse_y,xx-newwid,yy-newhei,xx+newwid,yy+newhei))
	{
		if (cloudLeaderData)
		{
			if (point_distance(mouse_x,mouse_y,rW*0.95,rH*0.3)<40)	
			{
				GooglePlayServices_Leaderboard_Show(lead_id);
				show_debug_message("showing leaderboard: "+string(lead_id));
			} else { play_sound(snWhoosh,false);
		expanded=2; }
		} else {
		play_sound(snWhoosh,false);
		expanded=2;		
		}		
	}
}