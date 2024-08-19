/// @desc shoot
index=1;
part_particles_create(oRoomController.part_sys, x+15, y-20,oRoomController.part6,10);
with (instance_create_layer(x+10,y-10,"Characters",oPlayer))
{
with(oFollowPlayer) {target=oPlayer;}	
bulletshield=true;
hspimmune=true;
hsp=6;
immune=true;
vsp=-18;
}
instance_create_layer(x+10,y+10,"Characters",oShield);
alarm[3]=65;
alarm[4]=900;