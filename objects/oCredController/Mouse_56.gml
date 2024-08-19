/// @desc
// guibuttonsy=0.15*room_height;
// guiexit=0.1*room_width;
// guicontinue=0.9*room_width;

if (point_distance(start_x,start_y,guiexit,guibuttonsy)<50)
{
SlideTransition(TRANS_MODE.GOTO,RoomMenu);
}

if (point_distance(start_x,start_y,guicontinue,guibuttonsy)<50)
{
if !(sliding) {sliding=true;slideind=0;} else {sliding=false;slideind=1;}
}

if (point_distance(start_x,start_y,guiexit,guispeedy)<50)
{
if (speedind==6) {speedind=7;speeditself=4;exit;}
if (speedind==5) {speedind=6;speeditself=2;exit;}
if (speedind==7) {speedind=5;speeditself=1;exit;}
}

start_x=noone;
start_y=noone;