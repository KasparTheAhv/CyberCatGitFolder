/// @desc make a child or not

		var xx= self.x+lengthdir_x(16,image_angle);
		var yy= self.y+lengthdir_y(16,image_angle);
		
		image_index=1;
		
if (self.vinesegnr<myheight) // grow
{
	

			with(instance_create_layer(xx,yy,"Dog",oVineShield))
			{
				myheight=other.myheight;
				whomademe=other.id;
				other.whoimade=self.id;
				image_angle=90;
				vinesegnr=other.vinesegnr+1;
				newang=other.newang;
				myheight=other.myheight;
				maxsegnr=other.maxsegnr;
			}
		
			
}  else { // change ang
		
	if (self.vinesegnr<maxsegnr) 
	{
			with(instance_create_layer(xx,yy,"Dog",oVineShield))
			{
			
				whomademe=other.id;
				other.whoimade=self.id;
				image_angle=other.newang;
				vinesegnr=other.vinesegnr+1;	
				newang=other.newang;
				myheight=other.myheight;
				maxsegnr=other.maxsegnr;
			}
	}
	
}

if (self.vinesegnr>=maxsegnr)  {image_index=0;}