/// @description Insert description here
// You can write your code in this editor
var halfw = w*0.5;
if mouse_check_button_pressed(mb_any) && (oki==1)
{
	var mousexx =(device_mouse_x(0));
	var mouseyy =(device_mouse_y(0));
    var skipxx= x+halfw+border;
    var skipyy= y;
	if (point_distance(mousexx,mouseyy,skipxx,skipyy)<100)
	{
	oki=0;
	instance_destroy();
	if (cancelendchanges) {exit;}
	times-=1;
	if (times==0) 
	{
	with (oPlayer)
	{
		if !(place_meeting(x,y,oEvent))
		{
		immune=false;
		canatk=true;
		} else {	
		var who2 = instance_place(x,y,oEvent);
		if !(who2.activated) {immune=false;
		canatk=true;}
		}
	}
	with (oVStick)
	{
	vstick_set_active(stick_id,true);
	}
	if instance_exists(who) {who.sequence+=1; who.blocker=false;} else {with (oFollowPlayer) {target = oPlayer;extraheight=0}}
	}
	}
}
