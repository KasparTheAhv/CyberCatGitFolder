/// @desc change to dog
if (helper) {var who=oDogFake;} else {var who=oDog;}

if (locker)
{
	if (electrod) {play_sound(snElectrocuted,false);}
	if (place_meeting(x,y,oWall)) or (tilemap_get_at_pixel(tilemap,x,y)==1)
	{
		if (visible) && (global.GFX1==1)
		{
		part_particles_create(oRoomController.part_sys, x+10, y,oRoomController.part7,irandom_range(20,30));
		part_particles_create(oRoomController.part_sys, x-10, y,oRoomController.part7,irandom_range(20,30));	
		}
		self.x=startx;
		self.y=starty;
		if (visible) && (global.GFX1==1)
		{
		part_particles_create(oRoomController.part_sys, x+10, y,oRoomController.part7,irandom_range(20,30));
		part_particles_create(oRoomController.part_sys, x-10, y,oRoomController.part7,irandom_range(20,30));
		}
		locker=false;
		with(instance_create_layer(x,y,"Characters",who))
		{
		anger=100;
		foreverchase=other.foreverchase;
		chase=other.chase;
		hsp=2*sign(other.image_xscale);
		vsp=0;
		if (who==oDogFake) {sprite_index=sDogRF;} else {sprite_index=sDogR;}
		image_speed=1;
		image_xscale=other.image_xscale;
		landed=false;
		jumping=other.jumping;
		walksp=other.walksp;
		elud=other.elud;
		if (other.electrod){
		alarm[0]=80;
		alarm[2]=100;	
		}else {alarm[1]=10;
		alarm[10]=1;}
		}
		instance_destroy();
	} else {
		locker=false;
		with(instance_create_layer(x,y,"Characters",who))
		{
			foreverchase=other.foreverchase;
			chase=other.chase;
			hsp=2*sign(other.image_xscale);
			if (other.direction>0) && (other.direction<180)
			{
			vsp=-2;
			} else {
			vsp=1;}
			if (visible) && (global.GFX1==1)
			{
			part_particles_create(oRoomController.part_sys, x+10, y,oRoomController.part7,irandom_range(20,35));
			part_particles_create(oRoomController.part_sys, x-10, y,oRoomController.part7,irandom_range(20,35));
			}
			if (who==oDogFake) {sprite_index=sDogRF;} else {sprite_index=sDogR;}
			
			image_speed=1;
			image_xscale=other.image_xscale;
			landed=other.landed;
			jumping=other.jumping;
			walksp=other.walksp;
			elud=other.elud;
			if (other.electrod){
			alarm[0]=80;
			alarm[2]=100;	
			}else{
			alarm[1]=10;}
		}
		instance_destroy();	
			
	}
}