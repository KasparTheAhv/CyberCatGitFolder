/// @desc
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y-2,oRoomController.part10,irandom_range(3,8));
part_particles_create(oRoomController.part_sys, x-2, y+2,oRoomController.part10,irandom_range(3,8));
part_particles_create(oRoomController.part_sys, x+2, y+2,oRoomController.part10,irandom_range(3,8));
}
if (global.soultype==0)
{
	instance_create_layer(x,y,"Characters",oFrog);
}

if (global.soultype==1)
{
	instance_create_layer(x,y,"Characters",oSnake);
}

if (global.soultype==2)
{
	instance_create_layer(x,y,"Dog",oDog);
}

if (global.soultype==3)
{
		with (instance_create_layer(x,y,"Dog",oBird))
			{
					// What room how many paths:
				path=Path4;
				whatbase=noone;
				flyspd=choose(1.5,1.75,2,2.5);
				speedmod=1;
				alarm[2]=10;
			}
}
instance_destroy();
