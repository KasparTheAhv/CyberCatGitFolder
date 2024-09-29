///@desc cheat teleport
if (global.cheat) 
{
	// if clicked near player, give nippy
	if (point_distance(x,y,mouse_x,mouse_y)<32)
	{
		instance_create_layer(self.x,self.y,"BefEdge",oNippy);
		instance_create_layer(self.x,self.y,"BefEdge",oNippy);	
	} else {
	// if didnt clikc near, teleport player	to where clicked
		self.x=mouse_x;
		self.y=mouse_y;
		vspP=0;
		vsp=0;
		immune=true;
		bulletshield=true;
	}
}
