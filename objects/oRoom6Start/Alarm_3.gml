instance_create_layer(x,y,"Particles",oPause);
with (instance_create_layer(x,y,"Characters",oAttackKey))
{
alpha=0;	
}
with(oVStick)
{
if (stick_id==1){self.alpha=0;self.toimi=true; self.joonista=true;}
}


part_particles_create(oRoomController.part_sys, x, y-3,oRoomController.part13,irandom_range(14,20)); // klaasikillud

with (instance_create_layer(x,y,"Characters",oPlayer))
{
	usable=false;
superplatform=true;
hsp=-2; vsp=-6;	
if (hsp!=0) {if (hsp>0) {image_xscale=0.75;} else {image_xscale=-0.75;}}
}
alarm[5]=40;
