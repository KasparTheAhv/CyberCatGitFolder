/// @description Insert description here
// You can write your code in this editor
var times = irandom_range(3,6);

repeat(times)
{	
	var where = irandom_range(200,room_width-200);
	
	with (instance_create_depth(where,0,dep,obj_lightning))
	{
	colorLight=c_white;
	}
}