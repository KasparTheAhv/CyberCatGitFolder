/// @desc
// Engine break 
if (event_id==101) && !(blocker)
{
		blocker=true;
		follow = instance_nearest(x,y,oWolfBoss);

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
			
	oWolfBoss.alarm[4]=1;	
	instance_destroy();
	}
