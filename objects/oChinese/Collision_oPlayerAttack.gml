/// @desc
if (self.immune==false)
{
var plax= side*12;
instance_create_layer(self.x+plax,self.y+10,"BefEdge",oSlash);

part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part17,irandom_range(50,60));
part_particles_create(oRoomController.part_sys, self.x, self.y,oRoomController.part18,irandom_range(40,50));	
	image_blend=c_red;
	alarm[8]=10;
	alarm[10]=60;
	self.immune=true;
	elud-=25;
			if (elud<=0) 
			{
			instance_destroy();	
			}
		alpharise=false;				
		spotid+=1;
		if (spotid==1) {xx=3309;yy=828;}
		if (spotid==2) {xx=2805;yy=701;}
		if (spotid==3) {xx=3578;yy=380;}
		self.x=xx;
		self.y=yy;
		alarm[0]=180;
}