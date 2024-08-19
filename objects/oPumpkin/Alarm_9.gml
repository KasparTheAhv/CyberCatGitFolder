/// @desc change vine Y


with (oVine)
{
	if (image_index==1)
	{
	if (image_yscale==1) {image_yscale=-1;} else {image_yscale=1;}
	}
}

with (oVineShield)
{
	if (image_index==1)
	{
	if (image_yscale==1) {image_yscale=-1;} else {image_yscale=1;}
	}
}

alarm[9]=30;
