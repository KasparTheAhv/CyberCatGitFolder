/// @desc Fast resize after graphics settings
self.scale=(0.5+1*global.GUI)*scaler;
image_xscale=self.scale;
poolsliderit=sprite_get_width(sSlider)*0.5*self.scale;
self.x=round(gW*0.25-poolsliderit);	
my_y=round(self.y-60-(40*global.GUI*global.GUI*scaler));
