/// @desc cook
if (image_index<2)
{
image_index+=1; alarm[0]=2;	
} else {
play_sound(snGrilling,false);
stage=2;	alarm[1]=300; alarm[9]=290;
}