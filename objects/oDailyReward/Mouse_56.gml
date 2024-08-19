/// @desc

var mox = device_mouse_x_to_gui(0);
var moy = device_mouse_y_to_gui(0);


		var hasNetwork = os_is_network_connected();
		var hasUnity = UnityAds_isInitialized();
		var isReady = global.unityRDY;
		show_debug_message("hasNet: "+string(hasNetwork));
		show_debug_message("hasUnity: "+string(hasUnity));
		show_debug_message("isReady: "+string(isReady));
			if !(hasNetwork){exit;}
			if !(hasUnity)	{exit;}
			if !(isReady)	{exit;}
			
if !(instance_exists(oAdToken))
{
	if (point_in_rectangle(mox,moy,boxCenterX-xDif,boxCenterY-yDif,boxCenterX+xDif,boxCenterY+yDif))
	{
	instance_create_layer(x,y,"Instances",oAdToken);	
	}
}