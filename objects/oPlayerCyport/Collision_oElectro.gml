with (other)
{
var direct=point_direction(x,y,other.x,other.y);	
}

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x+(22*image_xscale),y,oRoomController.part10,irandom_range(14,25));
}

with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
hsp = lengthdir_x(3,direct);
vsp =-2;

if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;

}
if (room==Room3) {if (oGUIBAR.hp==80){ with (oEvent) {if (event_id==8) {alarm[0]=1;}}}}
play_sound(snElectrocuted,false);
instance_destroy(oPlayerAttack);
