/// @desc
var curdist= point_distance(oFollowPlayer.x,oFollowPlayer.y,x,y);
var tase = (600-curdist)*0.0025;
var acttase= tase*tase;
if (clickcooldown>0) {clickcooldown-=1;}

if (curdist<100)
{
	if !(playing)
	{
		playing=true;
		play_sound(Mu1,false);
		song=Mu1;
		image_speed=1;
		var texter="Do you know Arctic monkeys? \n Do you wanna know?";
		with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
		{
		timer=120;
		target=other;
		text = texter;
		length = string_length(text);
		}
	}
}

if (curdist<600) && (playing)
{
	audio_sound_gain(song,acttase,1);
}


if (playing) && (stepblock==false)
{
	if (audio_is_playing(song)==false)
	{
		stepblock=true;
		alarm[2]=10;
		alarm[0]=1;
	}
}