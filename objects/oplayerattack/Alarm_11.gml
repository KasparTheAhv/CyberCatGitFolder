/// @desc Make god
// You can write your code in this editor
if !(instance_exists(oPlayerGod))
	{
		with (instance_create_layer(x,y-16,"Characters",oPlayerGod))
		{
			superplatform=other.superplatform;
			immune=true;
		}
	}
	
instance_destroy(self);	
instance_destroy(oAttackKey);
	
	with (oVStick)
	{
		if (stick_id==2) {self.joonista=true;self.toimi=true;}
	} 


