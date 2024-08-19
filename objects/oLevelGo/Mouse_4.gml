
if instance_exists(oAdWaiter) {
	exit;
	}



// watch ad
if !(clicked) && (expanded==1)
{
	if (watchad) && (global.unityRDY)
	{
		adindex=1;
		adtext="Watching AD\nwaiting til\nfully watched";
		clicked=true;
		extrastats=false;clicked=true;expanded=1;
		with(instance_create_layer(x,y,"Instances",oAdWaiter))
		{
			who=other.who;
			whatunlock=other.whatblock;
			shouldreward=false;
		}
	}	else {	adtext="Need internet\nconnection\nto continue";}
	
	
	
			alarm[1]=3;
}