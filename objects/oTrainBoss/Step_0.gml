if (current_state==train2states.dock)
{
	
	if (self.x<1350)
	{
	kaugus=1350-self.x;
	if (kaugus<0) {kaugus=-1*kaugus;}
	myspd=floor(2+(kaugus*0.05));
	myspd=clamp(myspd,0,4);
	self.x+=myspd;
	} else {
	self.x=1350;
	current_state=train2states.stay; alarm[2]=300;
	}
}


if (current_state==train2states.move)
{
		self.x+=mspeed;	
		if (mspeed<11) {mspeed+=0.1+(mspeed*0.05);}
		if (self.x>room_width+1000) {
		current_state=train2states.stay;	
		self.x=-120; alarm[0]=400; mspeed=0;myspd=0;
		}
}

/// @desc
var tohib1=false;
var tohib2=false;
with (oPlayer)
{
	if (place_meeting(x,y,oTrainWall))
	{
		var tohib1=true;
		if (x<other.bbox_right) && (x>other.bbox_right-other.totalwidth)
		{
		var tohib2=true;
		}
	}
}

if (tohib2==false) {exit;}
if (tohib1==false) {exit;} else
{
	with(oPlayer)
	{
		if !(immune)
		{
		alarm[8]=30;
		self.image_blend=c_orange;
		alarm[8]=30;	
		play_sound(snOuch,false);		
		
		with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
		{
		superplatform=other.superplatform;
		hsp= 6;
		vsp= -1;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
		}
		instance_destroy(oPlayer);
		}	
	}
}