///@desc chase god
if instance_exists(oPlayerGod)
{

var playernear=oPlayerGod;
var hownear=distance_to_point(playernear.x,self.y);

if (hownear+randomdist>350) {
	sprite_index=sPenquinR;image_speed=1;
	if (playernear.x>self.x) {self.hsp=4;image_xscale=0.75;}
	else
	{self.hsp=-4;image_xscale=-0.75;} alarm[5]=25; exit;
	
	} else { 
		
	alarm[2]=1;
		
		}
	
} else {alarm[0]=1;}