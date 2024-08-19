/// @desc
// kui läinud üle maxi, siis peida 
if (desireddist>maxdist) {
		if !(hidden) {
			hidden=true;
			desireddist=round(camera_get_view_width(view_camera[0])*0.51);
			alarm[0]=300;
		}
}