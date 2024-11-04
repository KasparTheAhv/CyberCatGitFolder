if !CatIsNearClick() or (clicked) {exit;}

var texter="Look at my snake!\nI tamed it myself! UwU";
with (instance_create_layer(self.x,self.y-80,"Particles",oTextFloat))
{
	extraheight=80;
	timer=120;
	target=other;
	text = texter;
	length = string_length(text);
}	

clicked=true;
alarm[1]=120;


