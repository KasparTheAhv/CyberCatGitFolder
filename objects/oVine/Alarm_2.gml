/// @desc make a child or not

		var xx= self.x+lengthdir_x(16,image_angle);
		var yy= self.y+lengthdir_y(16,image_angle);
	
if (self.vinesegnr<maxsegnr) // make a child
{
		image_index=1;
		if (iseven) // decide if new angle
		{
			
			// set var
			if (image_angle==0) // paremale
			{
				if (self.y<=oFollowPlayer.y) {var newang=270;}
				if (self.y>oFollowPlayer.y) {var newang=90;}
			}
			if (image_angle==90) // üles
			{
				if (self.x<=oFollowPlayer.x) {var newang=0;}
				if (self.x>oFollowPlayer.x) {var newang=180;}
			}
			if (image_angle==180) //vasakule 
			{
				if (self.y<=oFollowPlayer.y) {var newang=270;}
				if (self.y>oFollowPlayer.y) {var newang=90;}
			}
			if (image_angle==270) // alla
			{
				if (self.x<=oFollowPlayer.x) {var newang=0;}
				if (self.x>oFollowPlayer.x) {var newang=180;}
			}
			
			
			with(instance_create_layer(xx,yy,"BefEdge",oVine))
			{
				whomademe=other.id;
				image_angle=newang;
				vinesegnr=other.vinesegnr+1;
			}
		damage=false;
		image_blend=c_lime;
		
		} else { // old angle
	
			with(instance_create_layer(xx,yy,"BefEdge",oVine))
			{
				whomademe=other.id;
				image_angle=other.image_angle;
				vinesegnr=other.vinesegnr+1;
			}
		
		damage=false;
		image_blend=c_lime;
		
		
		}
		
} else { // dont make it
		damage=true;
		image_blend=c_orange;
	deleteme=true;	
	start=false;	
}


