/// @description Insert description here
// You can write your code in this editor
kustun=true;

if !(instance_exists(oPlayerGod))
{
	if !(nonippy)
	{with (instance_create_layer(x,y-15,"BefEdge",oNippy)){depth=other.depth-10;}}
}
if instance_exists(oRoomController)
{ 
oRoomController.alarm[3]=1;
}