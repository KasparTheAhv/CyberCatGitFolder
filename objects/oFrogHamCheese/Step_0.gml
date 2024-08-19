/// @desc

if (headmove)
{
xx=x+lengthdir_x(1,imangle);
yy=y+lengthdir_y(1,imangle);

	if (angup)
	{
	if (imangle<360) {imangle+=10;} else {angup=false;imangle=360;xx=x;yy=y; headmove=false; image_index=0; image_speed=1;}
	} else {
	if (imangle>0) {imangle-=10;} else {angup=true;imangle=0;xx=x;yy=y; headmove=false; image_index=0; image_speed=1;}	
	}

}