/// @desc start escape



	if !instance_exists(oTextFloat)
	{
		var texter="NJET! NJET! NJET!";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=150;
		target=other;
		text = texter;
		length = string_length(text);
		}		
	}
	
	oGUIBAR.task2="+ Task done!";oGUIBAR.task2col="[#4CFF4C]";
	oGUIBAR.task3="+ Task done!";oGUIBAR.task3col="[#4CFF4C]";
	oLvlEnd.t1=true; 	oLvlEnd.t2=true; 	oLvlEnd.t3=true;