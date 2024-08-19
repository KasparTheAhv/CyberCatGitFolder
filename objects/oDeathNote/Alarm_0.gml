///@desc Make the text appear
if (current==1){text=text;}
if (current==2){text=text2;}
if (current==3){text=text3;}
current+=1;

with (oPlayer)
	{
	canatk=false;
	immune=true;
	}
with (instance_create_layer(follow.x,follow.y-80,"Particles",oText))
	{
	times=1;
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
times=algnetimes;clicked=false;




