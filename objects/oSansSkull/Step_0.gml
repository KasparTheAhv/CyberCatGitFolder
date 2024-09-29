/// @desc
vsp+=grv;


//
if (stage==1)
{
	if (image_index<7) {
		image_index+=1;
	} else {stage=2;alarm[0]=1; alarm[1]=105; }
}

if (stage==3)
{
	if (image_index>0)
	{
		image_index-=1;
	} else {
		stage=4;
		UnlockNoteEgg("Egg",4);
	}
}

// Collision
if (tilemap_get_at_pixel(tilemap,x,y)!=0) {vsp=0; if (stage==0)&&(image_index==0){stage=1;}}
if (tilemap_get_at_pixel(tilemap2,x,y)!=0) {vsp=0;}

y+=vsp;