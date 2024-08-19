/// @desc god birdies
var side=choose(0,1);
var hei = irandom_range(600,900);
if (side==0)
{
	with(instance_create_layer(-40,hei,"Dog",oBirdPathless))
	{
		flyspd=choose(1,2,2.5,3);
	direction=0;
	}
} else {
	with(instance_create_layer(room_width+40,hei,"Dog",oBirdPathless))
	{
		flyspd=choose(1,2,2.5,3);
	direction=180;
	}
}