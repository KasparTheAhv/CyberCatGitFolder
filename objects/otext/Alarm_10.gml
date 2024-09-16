/// @desc Same as clicking skip event
// which is this objects Global Left Pressed
oki=0;
instance_destroy();
times-=1;

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
	with (oVStick) {vstick_set_active(stick_id,true);} 
	
	// increase sequence inside oEvent thats being touched
	if instance_exists(who) {who.sequence+=1; who.blocker=false;} else {with (oFollowPlayer) {target = oPlayer;extraheight=0;}}
}