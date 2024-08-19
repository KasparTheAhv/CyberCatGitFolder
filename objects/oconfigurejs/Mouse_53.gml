var guimousex =device_mouse_x_to_gui(0);
var guimousey =device_mouse_y_to_gui(0);

if (allowed) && (point_distance(guimousex,guimousey,x,y)<100)
{
	oConfigureJS.allowed=false;
	self.allowed=true;
	self.pulling=true;
}

