/// @desc
if (image_alpha<1)
{
image_alpha+=0.1;
image_xscale+=0.1;
image_yscale+=0.1;
}
if (wiggleright)
{
if (wiggle<20){wiggle+=1;}  else  {wiggleright=false;}
} else {
if (wiggle>-20){wiggle-=1;} else {wiggleright=true;}
}

direction=90+wiggle;
image_angle=direction;