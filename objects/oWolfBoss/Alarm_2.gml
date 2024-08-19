/// @desc attacking controller
if (image_index<1)
{
image_index+=1;	alarm[2]=3;
} else {
vsp-=3;
landed=false;
hsp=7*sign(image_xscale);
image_index+=1;
}