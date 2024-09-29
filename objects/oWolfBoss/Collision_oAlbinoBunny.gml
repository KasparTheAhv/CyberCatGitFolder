/// @desc
with (other)
{
	instance_destroy();	
}


with (instance_create_layer(oPlayer.x,oPlayer.y,"Walls",oEvent))
{
	event_id=111;
	activated=true;
}