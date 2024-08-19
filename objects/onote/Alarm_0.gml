///@desc Make the text appear
if (times==4) {text=text4;}
if (times==3) {text=text3;}
if (times==2) {text=text2;}
if (times==1) {text=text1;}
with (oPlayer)
	{
	canatk=false;
	immune=true;
	}
with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
	{
	times=other.times;
	target=other.follow;
	text = other.text;
	length = string_length(text);
	}
with (oFollowPlayer)
	{
	target = other.follow;
	extraheight=80;
	}

with(oVStick)
{
vstick_set_active(stick_id,false);
}

times-=1;

if (times!=0)
{
if (times==4) {text=text4;}
if (times==3) {text=text3;}
if (times==2) {text=text2;}
if (times==1) {text=text1;}
alarm[2]=10;
} else {times=algnetimes;clicked=false;}



