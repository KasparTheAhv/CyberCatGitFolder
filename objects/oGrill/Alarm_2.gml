/// @desc cook again
if (image_index<2)
{
image_index+=1; alarm[2]=2;	
} else {
play_sound(snGrilling,false);
alarm[3]=300; alarm[9]=290;
}