/// @description Insert description here
// You can write your code in this editor
var howmany=choose(1,1,2,3);


var yy=irandom_range(820,920);
var xx=room_width+60;

repeat(howmany)
{
instance_create_layer(xx+20,yy,"Electro",oTumbleweed);
}

alarm[0]=irandom_range(140,260);