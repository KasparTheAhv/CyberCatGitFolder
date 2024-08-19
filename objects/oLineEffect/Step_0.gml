/// @desc
if (fxOn)
{
if (progress<100) {progress+=10;} else {progress=0;}	
var prog= progress*0.1;
xx = x + lengthdir_x(prog,image_angle);
yy = y + lengthdir_y(prog,image_angle);
image_xscale=(201-(progress*2))*0.01;
}