/// @desc
if !instance_exists(oTextFloat)
{
	var texter="Meow! I like your fur!\nit smells like catnip!";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=150;
		target=other;
		text = texter;
		length = string_length(text);
		}	
}