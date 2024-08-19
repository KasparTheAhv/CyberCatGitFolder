/// @description Insert description here
// You can write your code in this editor

// ava key
if !(searchOpen) {		
if (point_distance(mouse_x,mouse_y,x,y)<40)
{		
			with (oCredController) {sliding=false;slideind=1;}
			searchOpen=true;
	if !keyboard_virtual_status()
	{
	keyboard_virtual_show(kbv_type_default,kbv_returnkey_default,kbv_autocapitalize_none,false);
	}		
	
	}
exit;
} else {
				if (point_distance(mouse_x,mouse_y,x,y)>40)
				{
				searchOpen=false;
				keyboard_virtual_hide();
				} else {
				// do search
					if (message!="")
					{
					if (curfinding<maxfindings) {curfinding+=1; alarm[1]=1;} else {curfinding=1; alarm[1]=1;}
					}
				}		
		}
		
		
		


