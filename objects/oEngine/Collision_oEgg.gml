/// @desc
if (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)>200) {exit;}
if (notbroken)
{
	notbroken=false;
instance_destroy(other);

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part111,irandom_range(20,25));
}
	with (instance_create_layer(x,y,"Characters",oGas))
				{
				boom=true;
				image_xscale=1.5;
				image_yscale=1.5;
				}
				self.image_index=1;
				alarm[0]=1;		
}