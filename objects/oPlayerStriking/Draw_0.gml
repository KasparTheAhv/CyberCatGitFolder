/// @desc
sizeWave=Wave(0.85,1.15,2,0,0);
if (global.strikeZoom) && (pushed!=0)
{
	for (var i=0;i<array_length(targetArray);i++)
	{
		var who = targetArray[i];
		draw_sprite_ext(sCatEye,0,who.x,who.y-45,0.75*sizeWave,0.75*sizeWave,0,c_white,1);
	}
}


