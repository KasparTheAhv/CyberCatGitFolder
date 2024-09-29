///@desc Strike power

var roomname=room_get_name(room);
var str=string_delete(roomname,1,4);
var amount=real(str);
if (amount<32) {exit;}



if (oGUIBAR.cn>=75)
{
	oGUIBAR.cn-=75;
	part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part17,irandom_range(50,60));
	part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part18,irandom_range(40,50));		
	with(instance_create_layer(x,y,"Characters",oPlayerStriking))
	{
		superplatform=other.superplatform;
		hsp=other.hsp;
		vsp=other.vsp;
		image_xscale=other.image_xscale;
		landed=other.landed;
		jumping=other.jumping;
		walksp=other.walksp;
		lastSide=sign(other.hsp);
		with(oFollowPlayer) {target=oPlayerStriking;}
	}
	instance_destroy();
}