///@desc create player back
part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part17,irandom_range(50,60));
part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part18,irandom_range(40,50));

if !instance_exists(oPlayer)
{
	with(instance_create_layer(x,y,"Characters",oPlayer))
	{
		superplatform=other.superplatform;
		immune=true;
		hspimmune=true;
		if (room!=Room21)
		{
		alarm[4]=30;
		} else {
			if instance_exists(oTimer)
			{
				if (oTimer.seconds>0) {alarm[4]=30;}	
			}
		}
		hsp=1*other.lastSide;
		vsp=-4;
		sprite_index=global.sPlayer;
		image_xscale=other.image_xscale;
		image_blend=c_blue;
		alarm[8]=30;
	}
}
with(oGUIBAR) {updateSpeed=5;
	defborderX=startborderX;
	defborderY=startborderY;
	}
with(oRoomController) {alarm[6]=2;}