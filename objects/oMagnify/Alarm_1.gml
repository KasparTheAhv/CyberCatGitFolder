/// @desc touch started
if (instance_exists(oAdRevive)) {exit;}
if (joonista)
{
	// get original cordinates where the touch was started
	algneX=	device_mouse_x(what_device);
	algneY=	device_mouse_y(what_device);
	touchstarted=true;
}