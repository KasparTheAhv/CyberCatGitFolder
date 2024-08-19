/// @desc

if (attackframe<3) {
attackframe+=0.5; 	
} else {attackframe=0;}

if (godframe<7) {
godframe+=0.5; 	
} else {godframe=0;}

actxx=xx+lengthdir_x(2,imangle);
actyy=yy+lengthdir_y(2,imangle);
actxx2=xx2+lengthdir_x(2,imangle);
actyy2=yy2+lengthdir_y(2,imangle);
if (imangle<360) {imangle+=3;} else {imangle=0;}
if (bulletdist<100) {bulletdist+=5;
	} else {
		
		if (bulletind<2) {bulletind+=1;} else {bulletind=0;}
		
		bulletdist=0;}