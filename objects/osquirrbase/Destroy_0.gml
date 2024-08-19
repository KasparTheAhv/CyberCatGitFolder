/// @description Insert description here
// You can write your code in this editor
if (room==Room7) or (room=Room3)
{
		oGUIBAR.task2="+ Task done!";	
		oGUIBAR.task2col="[#4CFF4C]";	
}

var xx=self.x;
var yy=self.y;
instance_create_layer(xx,yy,"Characters",oSquirrBaseB);
with (oRoomController)
{
	if (visible) && (global.GFX1==1)
	{
part_particles_create(part_sys, xx, yy,part6,irandom_range(5,8));
	}
}
play_sound(snBlast,false)

