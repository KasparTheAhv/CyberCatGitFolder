/// @desc Make god
// You can write your code in this editor
show_debug_message("jumala loomine");
if !(instance_exists(oPlayerGod))
	{
	with (instance_create_layer(x,y-16,"Characters",oPlayerGod))
	{
		superplatform=other.superplatform;
	}
	}
instance_destroy(self);	
instance_destroy(oAttackKey);
	
	with (oVStick)
	{
		if (stick_id==2) {self.joonista=true;self.toimi=true;}
	}


