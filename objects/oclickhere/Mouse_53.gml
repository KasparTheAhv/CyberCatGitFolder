/// @description Insert description here
// You can write your code in this editor
if instance_exists(oPlayer)
{
	if (distance_to_object(oPlayer)<250)	
	{
		self.alarm[2]=1;
	}
}