/// @description Insert description here
// You can write your code in this editor
if (rotation<359) {rotation+=1;} else {rotation=1;}
if instance_exists(oGun)
{
x = target.x; y = target.y;
}

if (global.isAndroid)
{
var dir = vstick_get_direction(2);
var oki = vstick_check(2);
} else {
var dir = point_direction(x,y,mouse_x,mouse_y);	
var oki = mouse_check_button(mb_any);
}

image_angle = dir;
firingdelay=firingdelay-1;
recoil=max(0,recoil-1);


if (oki) && (firingdelay<0)
{
	recoil=3;
	firingdelay=4;
	play_sound(snShoot,false);
	with (instance_create_layer(x,y,"Particles",oBullet))
	{
		image_xscale=1.5;
		image_yscale=1.5;
		alarm[0]=140;
		speed=26;
		direction=dir;
		image_angle=dir;
	}
}

x = x - lengthdir_x(recoil,dir);
y = y - lengthdir_y(recoil,dir);

if (image_angle>90) && (image_angle<270)
{
	image_yscale=-1;
	oPlayerGod.image_xscale=-1;
	
} else {
	image_yscale=1;
	oPlayerGod.image_xscale=1;
}

if (global.isAndroid)
{
var devi = vstick_get_deviation(2);
dist=devi*300;
} else {
dist=point_distance(x,y,mouse_x,mouse_y); 
}

xx=x+lengthdir_x(dist,dir);
yy=y+lengthdir_y(dist,dir);