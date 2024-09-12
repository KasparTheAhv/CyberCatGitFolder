with(other)
	{
		if (immune) {exit;}
		immune=true;
		elud-=1;
		instance_create_layer(x,y,"BefEdge",oNippy);
		
		image_blend=c_red;
		alarm[8]=-1;
		alarm[8]=60;
		
		if (elud<=0)
			{
			with (instance_create_layer(self.x,self.y,"Characters",oMonkeDeath))
				{
				image_xscale=other.scale;
				image_yscale=other.scale;
				}
				instance_destroy();
			var plax= side*12;
			instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);
			}
	}


	
play_sound(snDogHit,false);
if (image_xscale<0) {var mut=-14;} else {mut=14;}

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x+mut, y+6,oRoomController.part7,irandom_range(5,25));
}


