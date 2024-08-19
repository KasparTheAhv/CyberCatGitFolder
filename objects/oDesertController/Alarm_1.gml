/// @description Insert description here
// You can write your code in this editor
var targetX=noone;
var targetY=noone;
var leidis=false;
if instance_exists(oPlayer) {targetX=oPlayer.x;targetY=oPlayer.y-30;}
if instance_exists(oPlayerAttack) {targetX=oPlayerAttack.x;targetY=oPlayerAttack.y-30;}
if (targetY==noone) {alarm[1]=30;exit;}
var xmod=choose(250,-250);
	for (var i = 0; i <= 12; i++)
	{
		var extra=5*i;
		if (tilemap_get_at_pixel(tilemap,targetX+xmod,targetY+extra)==1) 
		{
		leidis=true;
		var destX=targetX+xmod;
		var destY=targetY+extra;	
		break;
		}	
	}
if !(leidis) {alarm[1]=30;exit;} else {
instance_create_layer(destX,destY,"Particles",oTornado);
alarm[1]=irandom_range(200,600);
}