/// @desc




blocker=false;
text= "100% discovery!! You got:";
// rectangle
guiH= display_get_gui_height();
guiW= display_get_gui_width();
x1=guiW*0.35;
textXX=guiW*0.48;
x2=guiW*0.65;



notiHeight=guiH*0.13; // pixels
tokenscale=floor(notiHeight/35);

tokenX=x2-10-(17*tokenscale);

currentY=0-notiHeight;
midY=currentY-(notiHeight*0.5);
startY=currentY;

maxY=notiHeight;

appear=true;
//

//SCRIBBLE
coloure="[#00CC63]";
scale=tokenscale*0.25;
textalpha="[alpha,"+string(1)+"]";
textscale=string(scale);
textscale="[scale,"+string(textscale)+"]";
