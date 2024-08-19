/// @desc chase detection
if (treatment)
{
who = instance_nearest(x,y,oDogTreat);
if (who==noone) {treatment=false;alarm[2]=2;exit;}
if (who.x<self.x) {hsp=-2; image_xscale=-0.7;} else {hsp=2; image_xscale=0.7;}



with (who) {var drop=dropped;}


if (drop==true)
{
	if (point_distance(x,y,who.x,who.y)<24) 
	{
		if (point_distance(0,y,0,who.y)<45)
		{
		eating=true;
		hsp=0;
		sprite_index=sDogE;
		alarm[9]=160;
		exit;
		}
	}
}

	if (who.y>self.y)
	{ if (havelanded) {allowdrop=true;alarm[5]=10;}
	alarm[2]=irandom_range(10,40); exit;}
	
		if (who.y+54<self.y)
		{
			jump=true; alarm[2]=irandom_range(10,40); exit;
		}

alarm[2]=1;
exit;	
} 






if !(instance_exists(oText)) && (treatment==false)
{
if (distance_to_object(oFollowPlayer)<280)
{
	chase=true;
	var ala1 = alarm_get(10);
	if (ala1<0) {alarm[10]=irandom_range(150,250);}
	
	alarm[0]=20;
	var ala = alarm_get(1);
	if (ala<0) {alarm[1]=irandom_range(20,50);}
} else {chase=false;}
}



if (foreverchase) && (treatment==false) {chase=true;
	var ala1 = alarm_get(10);
	if (ala1<0) {alarm[10]=irandom_range(150,250);}}
alarm[2]=irandom_range(20,35);

