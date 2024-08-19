/// @desc

if (mouse_x<room_width*0.1) {
	exit;}


var dist=point_distance(0,startedY,0,mouse_y);
if (dist>20)
{
	if (startedY>mouse_y){ kiirus=(dist*0.1)*-1;
		startedY-=1+(kiirus*-1);
		}
	if (startedY<mouse_y){ kiirus=dist*0.1;		
		startedY+=1+kiirus;
		}
} else {alarm[9]=1;}
