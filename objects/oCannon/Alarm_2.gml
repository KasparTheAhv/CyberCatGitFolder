/// @desc image angle
if (launching)
{
if (image_angle<65) { image_angle+=1; } else {exit;}
} else {
if (image_angle>5) { image_angle-=1; } else {exit;}
}

alarm[2]=1;