/// @description Insert description here
// You can write your code in this editor
if !instance_exists(oPlayerCypInvi)
{
part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part17,irandom_range(50,60));
part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part18,irandom_range(40,50));	
	
with(instance_create_layer(x,y,"Characters",oPlayerCypInvi))
{
mytarget=other.mytarget;
superplatform=other.superplatform;
hsp=other.hsp;
vsp=other.vsp;
image_xscale=other.image_xscale;
landed=other.landed;
jumping=other.jumping;
walksp=other.walksp;
lastSide=other.lastSide;
with(oFollowPlayer) {target=oPlayerCypInvi;}
}
instance_destroy();
}