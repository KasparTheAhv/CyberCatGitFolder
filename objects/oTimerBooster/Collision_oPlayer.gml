/// @desc Boost timer
if instance_exists(oTimer)
{
	if (oTimer.seconds>3) {oTimer.pieseconds-=60;}
}