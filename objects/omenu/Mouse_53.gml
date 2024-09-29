/// @desc
var mox = device_mouse_x_to_gui(0);
var moy = device_mouse_y_to_gui(0);
if (point_distance(notesArrow_x,notesArrow_y,mox,moy)<50)
{
	if !instance_exists(oPatchNotes)
	{
	instance_create_layer(x,y,"Instances",oPatchNotes);
	notesArrowYSCALE=-3;
	} else {
	instance_destroy(oPatchNotes);
	notesArrowYSCALE=3;
	}
}

