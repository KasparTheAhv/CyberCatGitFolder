/// @desc

if !(readytouse) {exit;}

if (global.isAndroid)
{
var vkH= keyboard_virtual_height();
var guiH = display_get_gui_height();
}

if !keyboard_virtual_status()
{
	if (point_in_rectangle(mouse_x,mouse_y,pro_x1,pro_y1,pro_x2,pro_y2)) // promo box
	{
		openedonce=true;
		keyboard_virtual_show(kbv_type_default,kbv_returnkey_default,kbv_autocapitalize_none,false);
	}
	
	
	if (PlayStats)
	{
		if (point_in_rectangle(mouse_x,mouse_y,ach_x1,ach_y1,ach_x2,ach_y2)) // ach box
		{
			GooglePlayServices_Achievements_Show();
		}
		
		if (point_in_rectangle(mouse_x,mouse_y,lea_x1,lea_y1,lea_x2,lea_y2)) // lea box
		{
			GooglePlayServices_Leaderboard_ShowAll();
		}
	}
	
} else {

	if (global.isAndroid)
	{
	var maxY = guiH-vkH;
	var moY = display_mouse_get_y();
	if (moY<maxY) {keyboard_virtual_hide();}
	}
}





