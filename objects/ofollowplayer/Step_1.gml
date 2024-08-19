/// @description Insert description here
// You can write your code in this editor
//Shake screen
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

if instance_exists(oGun)
{
	if (allowedcam==true)
	{
	var halfx,halfy;
	halfx=(oGun.xx+oPlayerGod.x)*0.5;
	halfy=(oGun.yy+oPlayerGod.y)*0.5;
	var myspd=distance_to_point(halfx,halfy)*0.05;
	move_towards_point(halfx,halfy,myspd);
	exit;
	}
}

if instance_exists(target)
{
	var myspd=floor(distance_to_point(target.x,target.y-extraheight)*0.1);
	move_towards_point(target.x,target.y-extraheight,myspd);
} else {speed=0;}

x=round(x);
y=round(y);


if (cavemap)
{
//Check for fake tiles
var _fakeTile = 0;
repeat (2)
{
_fakeTile+=tilemap_get_at_pixel(global.mapFake[0],x,y);
}
var _targetAlpha = 1;
if (_fakeTile > 0) _targetAlpha = 0.1;
global.fakeTileAlpha = lerp(global.fakeTileAlpha, _targetAlpha, 0.1)
}