/// @description Insert description here
// You can write your code in this editor
if !(allowed) {exit;}

if instance_exists(oPlayer) {
	if (guiclick) // kui gui, ss destroy hiireclicki l2heduse j2rgselt
	{
		if (point_distance(mouse_x,mouse_y,x,y)<60) {instance_destroy();}
	} else {
		if (point_distance(mouse_x,mouse_y,oPlayer.x,oPlayer.y)<120)
		{
			if (point_distance(mouse_x,mouse_y,x,y)<50) {instance_destroy();}
		}
	}
}