///@desc global.reading
global.reading=false;
if (PrevDrawStateVS1!=noone) {with(oVStick){if (stick_id==1){joonista=oRoomController.PrevDrawStateVS1;}}}
if (PrevDrawStateVS2!=noone) {with(oVStick){if (stick_id==2){joonista=oRoomController.PrevDrawStateVS2;}}}
if (PrevDrawStateAK!=noone) {with(oAttackKey){joonista=oRoomController.PrevDrawStateAK;}}
if (PrevDrawStateJMP!=noone) {with(oJumpKey){joonista=oRoomController.PrevDrawStateJMP;}}
if (PrevDrawStateGU!=noone) {with(oGUIBAR){joonista=oRoomController.PrevDrawStateGU;}}
if (PrevDrawStateGUtasks!=noone) {with(oGUIBAR){joonistatasks=oRoomController.PrevDrawStateGUtasks;}}

if !(instance_exists(oPause))
{
instance_create_layer(x,y,"Particles",oPause);
}
if !(instance_exists(oBook))
{
instance_create_layer(x,y,"Particles",oBook);
}
if !(instance_exists(oMagnify))
{
instance_create_layer(x,y,"Particles",oMagnify);
}
alarm[1]=1;
alarm[2]=1;
alarm[3]=1;
alarm[5]=1;

