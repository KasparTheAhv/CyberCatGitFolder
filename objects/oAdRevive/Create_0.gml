/// @desc Revive when died OBJECT
gWw=global.gameWidth*0.5;
picW=400;
TargetScale=gWw/picW;
image_xscale=0;
image_yscale=0;
image_speed=0;
image_index=0;
self.x=global.gameWidth*0.5;
self.y=global.gameHeight*0.5;
luba=false;
////// Button location areas x+70 y +50 ,, but center radius 50
butRadius=50*TargetScale;
cancelRadius=18*TargetScale;
// "no" button
noX=x+(70*TargetScale);
noY=y+(50*TargetScale);

// "yes" button
yesX=x-(70*TargetScale);
yesY=y+(50*TargetScale);


// "cancel" button
canX=x-(176*TargetScale);
canY=y-(76*TargetScale);

// timer 84 44
timerInd=7;
timX=x+(84*TargetScale);
timY=y+(44*TargetScale);
timerScale=2*TargetScale;
alarm[0]=60;
enum adReviveStates
{
	appear,
	fade,
	waiting,
}

cur_state=adReviveStates.appear;