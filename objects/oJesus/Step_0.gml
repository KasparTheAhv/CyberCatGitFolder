/// @desc
if (godown)
{
if (self.y<415)  {self.y+=2;}
} else {
if (self.y>-70)  {self.y-=2;}else {instance_destroy();}	
}

xx=x+lengthdir_x(2,imangle);
yy=y+lengthdir_y(2,imangle);
if (imangle<360) {imangle+=3;} else {imangle=0;}