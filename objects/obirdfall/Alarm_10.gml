/// @description Insert description here
play_sound(snFallen,false);
kustun=true;
if !(instance_exists(oPlayerGod))
{
if !(nonippy){with (instance_create_layer(x,y-15,"BefEdge",oNippy)){depth=other.depth-10;}}
}
sprite_index=sBirdDead;
image_xscale=choose(-0.75,0.75);
image_yscale=0.75;

if instance_exists(oRoomController)
{ 
oRoomController.alarm[2]=1;
}