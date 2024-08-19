/// @desc
if (instance_exists(oPlayerGod))
{	
	if (curscale<5)
	{
	curscale+=0.05;	
	}
} else {
	if (curscale>1)
	{
	curscale-=0.05;	
	}
}
c_rainbow = make_color_hsv((current_time/10) mod 255,255,255);
if (instance_exists(oPlayerGod))
{	
	image_blend=c_rainbow;
} else {
	image_blend=c_white;
}

var who = oFollowPlayer;
if instance_exists(oPlayer) {who= oPlayer;	}
if instance_exists(oPlayerFall) {who= oPlayerFall;	}
if instance_exists(oPlayerAttack) {who= oPlayerAttack;	}

var dist = point_distance(who.x,who.y,x,y); // dist between who and me

if (dist < 50) && (cur_state!=hedgestates.ball) // player very close, become ball
{	
cur_state=hedgestates.ball;
if (instance_exists(oPlayerGod))
{	
	sprite_index=sHedgehogGodGrey;
} else {
	sprite_index=sHedgehogGod;
}

image_index=0;
hsp=0;
image_speed=0;
alarm[0]=80;
}

if (dist < 80) && (cur_state!=hedgestates.ball) // player nearby, escape opposite way
{	
cur_state=hedgestates.escape;
if (instance_exists(oPlayerGod))
{	

	sprite_index=sHedgehogGrey;
} else {
	sprite_index=sHedgehog;
}
if (self.x<who.x) {hsp=-2;image_xscale=-1;} else {hsp=2;image_xscale=1;}
image_speed=2;
alarm[0]=80;
}


if (hsp!=0)
{

	if (tilemap_get_at_pixel(tilemap,x+(hsp*10),y)!=0)
	{
	hsp=hsp*-1; image_xscale=sign(hsp)*1;	
	}

}

self.x+=hsp;