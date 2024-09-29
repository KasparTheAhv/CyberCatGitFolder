/// @desc
image_index=0;
image_speed=0;
hspeed=0;
alarm[0]=240;

if instance_exists(oTextFloat) {exit;}

if (firstspeech)
{
	firstspeech=false;
	var texter="Hello! I'm responsible\nfor all the grafiti.\nDon't tell cops tho!";
	with (instance_create_layer(self.x,self.y-80,"Particles",oTextFloat))
	{
	extraheight=80;	
	timer=150;
	target=other;
	text = texter;
	length = string_length(text);
	}		
} else {
	// kas vajutas ristile või ei vajutanud
	if (point_distance(mouse_x,mouse_y,x+5*0.75,y-hdif)<8)
	{
		UnlockNoteEgg("Egg",5);
		var texter="Sorry, can't close that window!\nGot a lot of painting to do!";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=150;
		target=other;
		text = texter;
		length = string_length(text);
		}	
	} else {
		var texter="MS Paint is underrated!";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=150;
		target=other;
		text = texter;
		length = string_length(text);
		}		
	}	
}