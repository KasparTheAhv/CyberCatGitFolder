/// @desc
var xaxis=vstick_get_xaxis(1);

if instance_exists(oVStick)
{
	var spd =xaxis*1.3;
	spd=clamp(spd,-1,1);
	if (driving) {hsp = round(spd);}
}

if (self.x<3050) {
if (hsp<0) {hsp=0;}
}

if (self.x>3900) {
if (hsp>0) {hsp=0;}
}


if (hsp==0) {image_speed=0;image_index=0;} else {image_speed=1;}

self.x+=hsp;