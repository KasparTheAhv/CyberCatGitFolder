done=true;
	
	if !instance_exists(oPlayerGod)
	{
	if (room==Room6){
		oGUIBAR.task1="+ Task done!";	
		oGUIBAR.task1col="[#4CFF4C]";
	}	
	var cap=34*5;
with (instance_create_layer(rW*0.5,cap,"Characters",oFrog))
	{
		depth=depth+10;
		blocker=2;immune=true;
	image_xscale=5;
	image_yscale=5;
	}
	exit;
	} else { alarm[4]=30; }