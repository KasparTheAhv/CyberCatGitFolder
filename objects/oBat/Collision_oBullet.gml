/// @description Insert description here
// You can write your code in this editor
with (other)
{
	if (ineffective) {exit;}
}
if instance_exists(oGUIBAR){oGUIBAR.cn+=1.25;}
self.elud-=1;
image_blend=c_red;
play_sound(snShot,false);
if (elud<=0) 
{
	with (instance_create_layer(self.x,self.y-3,"Characters",oBatD))
	{
	nonippy=true;
	vsp= 0;
	hsp= irandom_range(-3,3);
	}
	instance_destroy();
}


