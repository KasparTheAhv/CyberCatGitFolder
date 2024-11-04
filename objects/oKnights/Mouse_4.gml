/// @desc
if (escape) {exit;}


if (CatIsNearClick())
{
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