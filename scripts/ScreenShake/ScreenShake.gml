///@desc ScreenShake(magnitude,frames)
function ScreenShake(){
	with (oFollowPlayer)
	{
		if(argument[0] > shake_remain)
		{
			shake_magnitude = argument[0];
			shake_remain = argument[0];
			shake_length = argument[1];
		}
	}


}




