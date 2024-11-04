/// @desc

if (y>430) {exit;}

if (state==0) && (CatIsNearClick())
{
	state=1;
	hspeed=0;
	vspeed=0;	
	if (tar.x>self.x) {image_xscale=1;} else {image_xscale=-1;}
	
	with (oEvent) {if !(activated) {activated=true;}}
	
	text="Hi, I'm Simo! Can you help me find...\n emn, I don't know what it is \n but it will surely help me cross over!";
	with (instance_create_layer(oGhost.x,oGhost.y-40,"Particles",oTextFloat))
	{
		whasound=514;
	extraheight=40;
	target=oGhost;
	text = other.text;
	length = string_length(text);
	timer=240;
	}
}