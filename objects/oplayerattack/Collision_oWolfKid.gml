
with (other)
{
if !(doglock)
{

elud-=10;	
doglock=true;
instance_create_layer(x,y,"BefEdge",oNippy);
oRoomController.alarm[0]=1;
	image_blend=c_red;
	alarm[8]=-1;
	alarm[8]=50;
play_sound(snDogHit,false);
if (image_xscale<0) {var mut=-14;} else {mut=14;}
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x+mut, y+6,oRoomController.part7,irandom_range(5,25));
}
if (elud<=0) 
{
	instance_destroy();
}
}
}

var plax= sign(image_xscale)*0.75*16;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);





