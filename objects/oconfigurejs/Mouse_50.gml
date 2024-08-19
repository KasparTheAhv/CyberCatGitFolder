if (pulling)
{
	
if (device_mouse_y_to_gui(0)>MingH)	
	{
		self.x=device_mouse_x_to_gui(0);	
		self.y=device_mouse_y_to_gui(0);	
		slave.x=round(self.x);
		slave.y=round(self.y);
		if (slavename==0)
		{
		vstick_set_x(1,self.x);
		vstick_set_y(1,self.y);
		} 
		if (slavename==1) {
		vstick_set_x(2,self.x);
		vstick_set_y(2,self.y);
		}
		if (slavename==3) {
		with (oJumpKey) {x=other.x;y=other.y;}
		}
		
		
	} else {
				self.x=device_mouse_x_to_gui(0);	
		slave.x=round(self.x);
		if (slavename==0)
		{
		vstick_set_x(1,self.x);
		} else {
		vstick_set_x(2,self.x);
		}
	}

}


