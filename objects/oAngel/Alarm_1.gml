/// @desc summon
alarm[0]=-1;
if (speed<=0)
{
var who=noone;
if instance_exists(oFollowPlayer) {who = instance_nearest(x,y,oFollowPlayer);}
if instance_exists(oPlayer) {who = instance_nearest(x,y,oPlayer);}
if instance_exists(oPlayerFall) {who = instance_nearest(x,y,oPlayerFall);}
if instance_exists(oPlayerAttack) {who = instance_nearest(x,y,oPlayerAttack);}
summonrate=0;
summonratemini=0;
var dist =1000 + point_distance(x,y,who.x,who.y);
var dir = point_direction(x,y,who.x,who.y);
summonx=x + lengthdir_x(dist,dir);
summony=y + lengthdir_y(dist,dir);
summondirection=point_direction(x,y,summonx,summony);
alarm[0]=-1;
alarm[2]=2;
} else { alarm[1]=5; }