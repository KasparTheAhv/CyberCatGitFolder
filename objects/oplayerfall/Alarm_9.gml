/// @desc revive after ad watched
oGUIBAR.hp+=90;
oRoomController.canrevive=false;
	if !instance_exists(oPlayer)
	{
		with(instance_create_layer(x,y,"Characters",oPlayer))
		{
		vsp=-9;
		superplatform=other.superplatform;
		immune=true;
		alarm[4]=300; // turn off immunity
		sprite_index=global.sPlayer;
		image_xscale=other.image_xscale;
		image_blend=c_yellow;
		alarm[8]=300; // change color back to white
		}
		instance_destroy();
	}