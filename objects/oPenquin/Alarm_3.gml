///@desc shoot the shot
if instance_exists(oPlayerGod)  
{
tar=oPlayerGod;
var dir=point_direction(x,y-17,tar.x,tar.y);
image_xscale=0.75*sign(tar.x-self.x);
with (instance_create_layer(x,y-17,"Gun",oBulletSnow))
{
alarm[0]=140; speed=11;image_xscale=0.5;image_yscale=0.5; direction=dir+irandom_range(-1,1); image_angle=dir+irandom_range(-1,1);
}
var playernear=oPlayerGod;
var hownear=distance_to_point(playernear.x,self.y);
if (hownear+randomdist>400) {
{
sprite_index=sPenquin;	
attack=false;
alarm[5]=1;
}
}
exit;	
}



if instance_exists(oFollowPlayer) {tar=oFollowPlayer;}
if instance_exists(oPlayer) {tar=oPlayer;}
if instance_exists(oPlayerAttack) {tar=oPlayerAttack;}
var dir=point_direction(x,y-17,tar.x+choose(0,1,-1),tar.y+choose(0,1,-1));
image_xscale=0.75*sign(tar.x-self.x);
with (instance_create_layer(x,y-17,"Gun",oBulletSnow))
{
alarm[0]=140; speed=9;image_xscale=0.5;image_yscale=0.5; direction=dir; image_angle=dir;
}

if (distance_to_object(tar)<125)
{
sprite_index=sPenquin;	
attack=false;
alarm[0]=1;
}