/// @description Insert description here
// You can write your code in this editor
with(other)
{
	instance_destroy();
}
if instance_exists(oGUIBAR)&&(instance_exists(oPlayerGod)){oGUIBAR.cn+=1.75;}
self.elud-=1;

if (elud<=0) 
{
	with (instance_create_layer(self.x,self.y+25,"Characters",oBirdFall))
	{
		if instance_exists(oPlayerGod) {image_blend=c_aqua;} 
	vsp= 2;
	hsp= irandom_range(-3,3);
	}
	instance_destroy();
}
image_blend=c_red;