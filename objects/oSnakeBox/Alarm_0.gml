/// @desc Open and alarm another 1-2 boxes. 

if (instance_number(oSnakeBox)>5)
{
var first = instance_nth_nearest(x,y,oSnakeBox,2);
var second = instance_nth_nearest(x,y,oSnakeBox,5);
first.alarm[0]=500;
second.alarm[0]=500;
} else {
	var first = instance_nearest(x,y,oSnakeBox);
	first.alarm[0]=500;
}

instance_create_layer(x,y,layer,oSnakeBoxed);
instance_destroy(self);
