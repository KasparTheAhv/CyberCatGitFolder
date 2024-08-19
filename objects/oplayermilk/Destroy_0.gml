if (sign(image_xscale)==1) {muutuja=13;} else {muutuja=-13;}

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x+muutuja, y+14,oRoomController.part9,irandom_range(7,12));
}

with (oEvent)
{
if (event_id==7){alarm[0]=1;}
}

with(oGUIBAR)
{
oGUIBAR.hp+=20;
}

with (instance_create_layer(x,y,"Characters",oNippy))
{
	image_alpha=0;
}
	