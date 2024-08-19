with (other)
{	
var sounded=soundon;
}

if (sounded)
{
part_particles_create(oRoomController.part_sys, x+(22*image_xscale),y,oRoomController.part10,irandom_range(14,25));
play_sound(snElectrocuted,false);
}

var dire=sign(image_xscale)*2*-1;
with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp = dire;
vsp =-2;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}
if (room==Room3) {if (oGUIBAR.hp==80){ with (oEvent) {if (event_id==8) {alarm[0]=1;}}}}
instance_destroy(oPlayerAttack);
if (room=Room3)
{
oLvlEnd.t1=true;
oGUIBAR.task1="+ Task done!"
oGUIBAR.task1col="[#4CFF4C]";
}