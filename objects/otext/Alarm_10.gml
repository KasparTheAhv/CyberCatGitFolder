/// @desc Same as clicking skip
// You can write your code in this editor

	oki=0;
	instance_destroy();
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

