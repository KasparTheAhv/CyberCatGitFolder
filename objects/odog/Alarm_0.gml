///@desc allowdrop or jump
if !instance_exists(oText) && (treatment==false)
{
if (distance_to_object(oFollowPlayer)<240)
{
if (oFollowPlayer.y>self.y)
{ if (havelanded){allowdrop=true;alarm[5]=10;}
	
	alarm[0]=irandom_range(30,80); exit;}

if (oFollowPlayer.y+54<self.y)

{if !place_meeting(x,y,oWater)  && !(wet) {jump=true;} alarm[0]=irandom_range(80,240); exit;}
} else {
	
var rando = choose(1,2);	
	if (rando==1)
	{
	if (havelanded){allowdrop=true;alarm[5]=10;} alarm[0]=irandom_range(100,240); exit;	
	} else {
	if !place_meeting(x,y,oWater) && !(wet) {jump=true;}
	alarm[0]=irandom_range(40,240); exit;
	}
}


}
alarm[0]=20;