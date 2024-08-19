/// @desc
if (escape) {exit;}

if instance_exists(oPlayer)
{
if (point_distance(x,y,oPlayer.x,oPlayer.y)<70)	{

	if !instance_exists(oTextFloat) && !instance_exists(oText)
	{
		var texter="NI!";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=80;
		target=other;
		text = texter;
		length = string_length(text);
		}		
	}


	}
}

