if instance_exists(oPlayerGod) {exit;}
if instance_exists(oText) {exit;}
if instance_exists(oTextFloat) {exit;}
if !(clicked) && (distance_to_object(oPlayer)<100)
{
	if !(instance_exists(oPlayerGod))
	{
	clicked=true;
	algnetimes=times;
	alarm[0]=1;
	} else {exit;}
	
}
	
