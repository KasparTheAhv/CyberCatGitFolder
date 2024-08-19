/// @description Insert description here
// You can write your code in this editor

	with (instance_create_layer(self.x,self.y+25,"Characters",oBirdFall))
	{
	vsp= 2;
	hsp= irandom_range(-3,3);
	}
	instance_destroy();
	with (other)
	{
	kills+=1;	
	}
