if instance_exists(oPlayerGod) {exit;}
if instance_exists(oText) {exit;}
if instance_exists(oTextFloat) {exit;}

if (distance_to_object(oPlayer)<100) 
{
	
	if (current<4)
	{
		alarm[5]=1;
	} else {
			
		
			
			
			instance_create_layer(1000,350,"Bosses",oMonocle);
			with (instance_create_layer(oPlayer.x,oPlayer.y,"Walls",oEvent))
			{
				activated=true;
				event_id=54;
			}
			instance_destroy();
		}
}