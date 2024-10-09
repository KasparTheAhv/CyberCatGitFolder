with(other)
{
instance_destroy();
}
if instance_exists(oGUIBAR){oGUIBAR.cn+=1;}
self.elud-=2;
image_blend=c_red;
alarm[8]=4;
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


