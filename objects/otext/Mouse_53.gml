/// @desc Click skip/continue on text box
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
		// if no more texts in the note/event sequence
		if (times==0) 
		{
			// If player is NOT touching an event object, let is attack and take off immunity
			with (oPlayer)
			{
				if !(place_meeting(x,y,oEvent))
				{
					immune=false;
					canatk=true;
				} else {	// else do it ALSO, BUT ONLY IF the touched event isn't activated
					var who2 = instance_place(x,y,oEvent);
					if !(who2.activated) {immune=false; canatk=true;}
				}
			}
			// set joystick active
			with (oVStick){vstick_set_active(stick_id,true);}
			
			// increase sequence inside oEvent thats being touched
			if instance_exists(who) {who.sequence+=1; who.blocker=false;} else {with (oFollowPlayer) {target = oPlayer;extraheight=0;}}
		}
	}
}
