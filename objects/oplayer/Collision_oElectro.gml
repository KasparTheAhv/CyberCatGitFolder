if (room=Room3)
{
oLvlEnd.t1=true;
TaskDone(1);
}

with (other)
{
var sounded=soundon;
}

if (room==Room1Tester)
{
	oGUIBAR.hp=10;	
}


if (sounded)
{
	if (visible) && (global.GFX1==1)
	{
		part_particles_create(oRoomController.part_sys, x+(22*image_xscale),y,oRoomController.part10,irandom_range(14,25));
	}
play_sound(snElectrocuted,false);
}


if (other.x<self.x) {var dire=2} else {var dire=-2;}


with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp = dire;
vsp =-2;

if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}

if (room==Room3) {if (oGUIBAR.hp==80){ with (oEvent) {if (event_id==8) {alarm[0]=1;}}}}
if (room=Room3)
{
oLvlEnd.t1=true;
TaskDone(1);
}
	
if (room==Room15)
{
	if (oGUIBAR.task3!="")
	{
		TaskDone(3);
	}
}
instance_destroy(oPlayer);
with (oGUIBAR) {cn-=25;}

