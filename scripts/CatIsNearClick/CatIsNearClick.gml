// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CatIsNearClick(){
	if instance_exists(oPlayer){
		if (distance_to_object(oPlayer)<80) && (point_distance(x,y,mouse_x,mouse_y)<25)
		{
			return true;	
		} else {return false;}
	} else { return false; }
}