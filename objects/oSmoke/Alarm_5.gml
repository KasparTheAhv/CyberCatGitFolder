/// @descw


if (room==Room27)
{
	if (working) {working=false;alarm[5]=irandom_range(100,160);} else {working=true;alarm[5]=irandom_range(15,30);}

}

if (room==Room19)
{
alarm[5]=irandom_range(200,600);
	if (working) {working=false;} else {working=true;}
}