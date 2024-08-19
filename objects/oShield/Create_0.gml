if instance_exists(oPlayer)
{
target=oPlayer;	
}

if instance_exists(oPlayerAttack)
{
target=oPlayerAttack;	
}
forplayer=true;
//SCRIBBLE
enemy=noone;
color="[#FFFFFF]";
coloryes="[#E55B5B]";
colorno="[#4CFF87]";
scale=global.scaler*1.5;
xx=global.gameWidth*0.6;
yy=global.gameHeight*0.05;
textscale=string(scale);
textscale="[scale,"+string(textscale)+"]";
textbase=string(textscale)+string(color);
count=15; 
alarm[0]=60;