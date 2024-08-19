/// @desc
if (activated==true)
{	
	if !(instance_exists(oDog)) && !(instance_exists(oDogAttack))
	{
	activated=false;
	alarm[1]=1;
	exit;
	}
}