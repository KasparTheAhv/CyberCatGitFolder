/// @desc
with (other)
{
	self.elud-=1;
	humanhater=true;
	image_blend=c_red;
	alarm[8]=6;
	play_sound(snShot,false);
	if (elud<=0) 
	{
		with (instance_create_layer(self.x,self.y-3,"Characters",oSquirFall))
		{
		vsp= -3;
		hsp= irandom_range(-3,3);
		}
		instance_destroy();
	}
}

with (oSquir)
{
if (point_distance(oFatMan.x,oFatMan.y,x,y)<220) {self.humanhater=true;}	
}


instance_destroy();
